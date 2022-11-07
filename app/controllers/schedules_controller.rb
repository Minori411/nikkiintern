class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    @schedule = Schedule.new
    render partial:'schedules/form_new',locals: { schedule: @schedule }
  end

  def index
    @schedules =  Schedule.all
  end

  def create
    @schedule =  Schedule.new(schedule_params)
    if @schedule.save
      redirect_to schedules_path
    else
      render :index
    end
  end

  def update
    starttime = params[:start]
    endtime = params[:end]
    schedule = Schedule.find(params[:id])
    schedule.update(start: starttime, end: endtime)
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
  end

  def schedule_params
    params.require(:schedule).permit(:start, :end, :title, :start_time, :extendedProps, :description, :allday, :eventColor, :color, :events).merge(user_id: current_user.id)
  end
end

