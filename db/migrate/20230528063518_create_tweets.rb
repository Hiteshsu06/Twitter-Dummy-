class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :username
      t.string :post
      t.integer :user_id
      t.string :image
      t.string :comment
      t.integer :retweet
      t.integer :like

      t.timestamps
    end
    create_table :comments do |t|
      t.string :username
      t.integer :userId
      t.string :comment
      t.integer :tweetId

      t.timestamps
    end
  end
end
