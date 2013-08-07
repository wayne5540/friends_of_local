# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130724151826) do

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "sex"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "introduce"
    t.string   "trip_plan"
    t.string   "trip_detail"
    t.string   "contact"
    t.string   "profile_photo"
    t.string   "country"
    t.string   "city"
    t.string   "language"
    t.boolean  "chinese",         :default => false
    t.boolean  "english",         :default => false
    t.boolean  "japanese",        :default => false
    t.string   "area"
  end

  add_index "users", ["area"], :name => "index_users_on_area"
  add_index "users", ["city"], :name => "index_users_on_city"
  add_index "users", ["contact"], :name => "index_users_on_contact"
  add_index "users", ["country"], :name => "index_users_on_country"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["introduce"], :name => "index_users_on_introduce"
  add_index "users", ["language"], :name => "index_users_on_language"
  add_index "users", ["profile_photo"], :name => "index_users_on_profile_photo"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["trip_detail"], :name => "index_users_on_trip_detail"
  add_index "users", ["trip_plan"], :name => "index_users_on_trip_plan"

end
