class DateController < ApplicationController

  def index
    @date = Date.today
    @tasks = Task.where("date" => @date)
    render :json => @tasks
  end

  # GET /date/:date
  def show
    @date = params[:date]
    @tasks = Task.where("date" => @date)
    render :json => @tasks
  end
end
