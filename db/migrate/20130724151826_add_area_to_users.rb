class AddAreaToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :area, :string
  	add_index :users, :area
  end
end
