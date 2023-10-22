class RenameCommentToComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :tweets, :comment, :comments
  end
end
