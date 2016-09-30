class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :update, :destroy]

  # GET /tweets
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  # GET /tweets/1
  def show
    render json: @tweet
  end

  # GET /tweets/date/2016-06-24
  def date
    @tweets = Tweet.where("date"=> params[:date])
    render json: @tweets
  end

  # POST /tweets
  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      @action = @tweet.tweet_action.build({
        user_id: @tweet.user_id,
        action_type: 1,
        date: @tweet.date
      })
      @action.save
      render json: @tweet, status: :created, location: @tweet
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tweets/1
  def update
    if @tweet.update(tweet_params)
      @action = @tweet.tweet_action.build({
        user_id: @tweet.user_id,
        date: @tweet.date,
      })

      if tweet_params.has_key?(:status)
        if @tweet.status === Tweet::STATUS[:private]
          @action.action_type = TweetAction::ACTION_TYPE[:unpublish]
        elsif @tweet.status === Tweet::STATUS[:public]
          @action.action_type = TweetAction::ACTION_TYPE[:publish]
        elsif @tweet.status === Tweet::STATUS[:deleted]
          @action.action_type = TweetAction::ACTION_TYPE[:delete]
        else
          @action.action_type = nil
        end
      end
      @action.save

      render json: @tweet
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tweet_params
      params.require(:tweet).permit(:user_id, :date, :status, :text)
    end
end
