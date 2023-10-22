class PagesController < ApplicationController
  def home
    #getting all tweets
    @tweets_all = Tweet.all
    
    #getting only followers tweets
    current_followers = Follower.where(user_id:current_user.id)
    followers_id = []
    following_id = []
    current_followers.each do |item|
    followers_id.push(item.follower_id)
    following_id.push(item.following_id)
    end
    @followers_tweets = Tweet.where(user_id:followers_id)
    @followers_count = Tweet.where(user_id:followers_id).count()
    @following_count = Tweet.where(user_id:following_id).count()
    @comments = Comment.all
  end
  def show
    # @profile = User.all
    @profile = User.find(current_user.id)
    @tweet_count = Tweet.count()
    @tweets = Tweet.where(user_id:current_user.id )
    @comments = Comment.all
  end
end
