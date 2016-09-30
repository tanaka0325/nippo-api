class TimelineController < ApplicationController
  def index
    @task_actions = TaskAction.all
    @tweet_actions = TweetAction.all
    render json: [@task_actions, @tweet_actions].flatten.sort_by{|a| a.created_at}.reverse
  end

  def date
    @task_actions = TaskAction.where(date: params[:date])
    @tweet_actions = TweetAction.where(date: params[:date])
    render json: [@task_actions, @tweet_actions].flatten.sort_by{|a| a.created_at}.reverse
  end
end
