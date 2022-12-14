class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    @schedule = Schedule.new
    @schedule.start = (params[:year] + "-" + params[:month] + "-" + params[:day]).to_datetime
    @schedule.end = (params[:year] + "-" + params[:month] + "-" + params[:day]).to_datetime
    @schedule.schedule_area_sections.build
    render partial:'schedules/form_new',locals: { schedule: @schedule }
  end

  def index
    areas = []
    if params[:area_name_a].to_i == 1
      areas << 1
    end
    if params[:area_name_b].to_i == 1
      areas << 2
    end
    if params[:area_name_c].to_i == 1
      areas << 3
    end
    if params[:area_name_d].to_i == 1
      areas << 4
    end

    sections = []
    if params[:section_name_a].to_i == 1
      sections << 1
    end
    if params[:section_name_b].to_i == 1
      sections << 2
    end
    if params[:section_name_c].to_i == 1
      sections << 3
    end
    if params[:section_name_d].to_i == 1
      sections << 4
    end
    if params[:section_name_e].to_i == 1
      sections << 5
    end
    if params[:section_name_f].to_i == 1
      sections << 6
    end

    @schedules = Schedule.search(params[:keyword],areas,sections)
    @keyword = params[:keyword]
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @schedules }
      format.json { render :json => @schedules }
    end
  end

  def create
    redirect_to schedules_path and return if current_user.userstyle == 1
    @schedule =  Schedule.new(schedule_params)
    respond_to do |format|
      if @schedule.save
      schedule_area_sections = params[:schedule][:schedule_area_sections_attributes].values
      Rails.logger.warn("schedule_area_sections")
      #news_area_sections.map [{area_id: 99,#全パターン/all all
      if schedule_area_sections.map{|v| v["area_id"].to_i}.include?(4) && schedule_area_sections.map{|v| v["section_id"].to_i}.include?(6)
        target_user_ids = User.where(userstyle: [0,1]).ids
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
        #エリアが全パターンのバージョン/all sectionA
      elsif schedule_area_sections.map{|v| v["area_id"].to_i}.include?(4) && !schedule_area_sections.map{|v| v["section_id"].to_i}.include?(6)
        target_user_ids = params[:schedule][:schedule_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(area_id: v[:area_id])
        end.reduce(&:or).pluck('user_id')
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
        #セクションが全パターンのバージョン/sectionA all
      elsif !schedule_area_sections.map{|v| v["area_id"].to_i}.include?(4) && schedule_area_sections.map{|v| v["section_id"].to_i}.include?(6) 
        target_user_ids = params[:schedule][:schedule_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(section_id: v[:section_id])
        end.reduce(&:or).pluck('user_id')
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
        #個別通知/Area_A section_A
      else
        target_user_ids = params[:schedule][:schedule_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(area_id: v[:area_id], section_id: v[:section_id])
        end.reduce(&:or).pluck('user_id')
        # admin_user_ids = User.where(userstyle: 0).ids
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
      end
        format.html { redirect_to schedules_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find_by(id: params[:id])
    unless ScheduleRead.find_by(user_id: current_user.id, schedule_id: @schedule.id)
      current_user.schedule_reads.create(user_id: current_user.id, schedule_id: @schedule.id)
    end
    @schedule_reads = @schedule.schedule_reads
    Rails.logger.debug(@schedule)
    render partial:'schedules/form_update',locals: { schedule: @schedule }
  end

  def update
    redirect_to schedules_path and return if current_user.userstyle == 1
    @schedule = Schedule.find_by(id: params[:id])
    if @schedule.update(schedule_params)
      schedule_area_sections = params[:schedule][:schedule_area_sections_attributes].values
      Rails.logger.warn("schedule_area_sections")
      #news_area_sections.map [{area_id: 99,#全パターン/all all
      if schedule_area_sections.map{|v| v["area_id"].to_i}.include?(4) && schedule_area_sections.map{|v| v["section_id"].to_i}.include?(6)
        target_user_ids = User.where(userstyle: [0,1]).ids
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
        #エリアが全パターンのバージョン/all sectionA
      elsif schedule_area_sections.map{|v| v["area_id"].to_i}.include?(4) && !schedule_area_sections.map{|v| v["section_id"].to_i}.include?(6)
        target_user_ids = params[:schedule][:schedule_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(area_id: v[:area_id])
        end.reduce(&:or).pluck('user_id')
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
        #セクションが全パターンのバージョン/sectionA all
      elsif !schedule_area_sections.map{|v| v["area_id"].to_i}.include?(4) && schedule_area_sections.map{|v| v["section_id"].to_i}.include?(6) 
        target_user_ids = params[:schedule][:schedule_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(section_id: v[:section_id])
        end.reduce(&:or).pluck('user_id')
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
        #個別通知/Area_A section_A
      else
        target_user_ids = params[:schedule][:schedule_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(area_id: v[:area_id], section_id: v[:section_id])
        end.reduce(&:or).pluck('user_id')
        # admin_user_ids = User.where(userstyle: 0).ids
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@schedule.id,"schedule")
      end
      redirect_to schedules_path
    end
  end

  def destroy
    redirect_to schedules_path and return if current_user.userstyle == 1
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to schedules_path
  end

  def schedule_params
    params.require(:schedule).permit(:start, :end, :title, :start_time, :extendedProps, :description, :allDay, :eventColor, :color, :events, :area_id, :section_id, schedule_area_sections_attributes:[:id,:area_id,:section_id]).merge(user_id: current_user.id)
  end
end

