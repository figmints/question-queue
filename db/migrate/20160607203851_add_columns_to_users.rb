class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_photo, :string
    add_column :users, :admin, :boolean
    add_column :users, :title, :string
    add_reference :users, :department, index: true
  end
end
