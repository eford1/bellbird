class AlarmsController < ApplicationController
  def index
    # TODO(eford): add pagination
    @alarms = Alarm.order(created_at: :desc)
  end

  def show
    @alarm = Alarm.find(params[:id])
  end

  def new
    @alarm = Alarm.new
  end

  def create
    @alarm = Alarm.new(alarm_params)
    if @alarm.save
      PushWorker.perform_async(@alarm.id)
      redirect_to alarms_path
    else
      render 'new'
    end
  end

  private

  def alarm_params
    params.require(:alarm).permit(:text)
  end
end
