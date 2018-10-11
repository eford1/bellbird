class UpvotesController < ApplicationController
  def create
    puts "UPVOTING ALARM #{params[:alarm_id]}"
    @alarm = Alarm.find(params[:alarm_id])
    @upvote = @alarm.upvotes.new
    @upvote.save
    redirect_to alarms_path
  end
end
