class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.integer :userId
      t.string :comment
      t.integer :tweetId

      t.timestamps
    end
  end
end
