class AddProfilesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :introduce, :string
  	add_index :users, :introduce
  	add_column :users, :trip_plan, :string
  	add_index :users, :trip_plan
  	add_column :users, :trip_detail, :string
  	add_index :users, :trip_detail
  	add_column :users, :contact, :string
  	add_index :users, :contact
  end
end
