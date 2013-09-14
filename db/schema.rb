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

ActiveRecord::Schema.define(:version => 20130914201353) do

  create_table "actions", :force => true do |t|
    t.integer  "challenge_id"
    t.integer  "user_id"
    t.integer  "count"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "actions", ["challenge_id"], :name => "index_actions_on_challenge_id"
  add_index "actions", ["user_id"], :name => "index_actions_on_user_id"

  create_table "blackmails", :force => true do |t|
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  add_index "blackmails", ["user_id"], :name => "index_blackmails_on_user_id"

  create_table "challenges", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.string   "description"
    t.integer  "group_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
  end

  add_index "challenges", ["group_id"], :name => "index_challenges_on_group_id"

  create_table "groups", :force => true do |t|
    t.integer  "bucket"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "leader"
    t.string   "name"
  end

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  create_table "stats", :force => true do |t|
    t.integer  "successes"
    t.integer  "failures"
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "stats", ["group_id"], :name => "index_stats_on_group_id"
  add_index "stats", ["user_id"], :name => "index_stats_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "fb_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "access_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
