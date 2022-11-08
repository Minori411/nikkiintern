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
    @schedules =  Schedule.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @schedules }
      format.json { render :json => @schedules }
    end
  end

  def create
    redirect_to schedulea_path and return if current_user.userstyle == 1
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
    render partial:'schedules/form_show',locals: { schedule: @schedule }
  end

  def edit
    @schedule = Schedule.find(params[:id])
    @schedule.schedule_area_sections.build
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(news_params)
      redirect_to schedules_path(@schedule.id)
    else
      render :update
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to schedules_path
  end

  def schedule_params
    params.require(:schedule).permit(:start, :end, :title, :start_time, :extendedProps, :description, :allDay, :eventColor, :color, :events, :area_id, :section_id, schedule_area_sections_attributes:[:id,:area_id,:section_id]).merge(user_id: current_user.id)
  end
end

