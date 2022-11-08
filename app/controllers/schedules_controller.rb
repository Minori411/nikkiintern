class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    @schedule = Schedule.new
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
    redirect_to schedulea_path and return if current_user.user_style == 1
    @schedule =  Schedule.new(schedule_params)
    respond_to do |format|
      if @schedule.save
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
    schedule = Schedule.find(params[:id])
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

