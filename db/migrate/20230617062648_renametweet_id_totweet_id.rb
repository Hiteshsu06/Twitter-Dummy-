class RenametweetIdTotweetId < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :tweetId, :tweet_id
  end
end
