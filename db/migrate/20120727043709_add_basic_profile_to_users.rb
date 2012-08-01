class AddBasicProfileToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :profile_photo, :string
  	add_index :users, :profile_photo
  	add_column :users, :country, :string
  	add_index :users, :country
  	add_column :users, :city, :string
  	add_index :users, :city
  	add_column :users, :language, :string
  	add_index :users, :language
  end
end
