class RenameRetweetToParentId < ActiveRecord::Migration[7.0]
  def change
    rename_column(:tweets, :retweet, :parent_id)
  end
end
