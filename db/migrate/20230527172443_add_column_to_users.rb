class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :address, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :profile_image, :string
    add_column :users, :phone_number, :integer
  end
end
