class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    @schedule = Schedule.new
    render plain: render_to_string(partial: 'form_new', layout: false, locals: { schedule: @schedule })
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
    params.require(:schedule).permit(:start, :end, :title)
  end
end
