class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @tweet_id = params[:tweet_id]
    individual_tweet = Tweet.find(params[:tweet_id])
    @comment = individual_tweet.comments.build()
  end

  def create
    @tweet_id = params[:tweet_id]
    individual_tweet = Tweet.find(params[:tweet_id])
    @comment = individual_tweet.comments.build(comment_params)
    if @comment.save
      redirect_to root_path, notice: 'Comment created successfully.'
    else
      redirect_to root_path, notice: 'Comment not created'
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:comment, :tweet_id,  :username, :userId)
  end 
  
end
