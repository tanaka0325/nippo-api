class TimelineController < ApplicationController
  def index
    @logs = ActionLog.all
    render json: @logs
  end

  def date
    @date = Date.strptime(params[:date], "%Y-%m-%d")
    @logs = ActionLog.where(created_at: @date.beginning_of_day..@date.end_of_day).order(created_at: :desc).limit(5)
    render json: @logs
  end
end
