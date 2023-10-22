class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def retweet
      @tweet_object = Tweet.find(params[:tweet_id])
      @tweet = Tweet.new
  end

  def create_retweet
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  def tweet_params
    params.require(:tweet).permit(:username, :post, :user_id, :image,:comment, :parent_id, :like)
  end 
end
