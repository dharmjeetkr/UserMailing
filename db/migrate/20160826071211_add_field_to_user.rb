class AddFieldToUser < ActiveRecord::Migration
  def change
  	add_column :users, :role_id, :integer
  	remove_column :users, :role, :string
  end
end
