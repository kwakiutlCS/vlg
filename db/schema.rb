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

ActiveRecord::Schema.define(:version => 20130820175752) do

  create_table "armours_items", :force => true do |t|
    t.string   "name"
    t.integer  "mass"
    t.string   "decay"
    t.integer  "decay_days"
    t.integer  "quality"
    t.text     "assemble"
    t.string   "workshop"
    t.text     "assemble_skills"
    t.text     "tools"
    t.integer  "result"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "clothes_items", :force => true do |t|
    t.string   "name"
    t.integer  "mass",            :default => 1
    t.integer  "moral",           :default => 0
    t.string   "decay",           :default => ""
    t.integer  "decay_days",      :default => 100
    t.integer  "quality",         :default => 0
    t.text     "assemble",        :default => "'--- {}\n'"
    t.string   "workshop",        :default => "weaver"
    t.text     "assemble_skills", :default => "'--- {}\n'"
    t.text     "tools",           :default => "'--- {}\n'"
    t.integer  "result",          :default => 1
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "food_items", :force => true do |t|
    t.string   "name"
    t.integer  "mass"
    t.integer  "hunger"
    t.integer  "moral"
    t.integer  "str"
    t.integer  "int"
    t.integer  "cha"
    t.integer  "dex"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "decay"
    t.integer  "decay_probability"
    t.text     "assemble"
    t.string   "workshop"
    t.text     "assemble_skills"
    t.text     "tools"
    t.integer  "result"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.string   "name"
    t.boolean  "admin",                                 :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "weapons_items", :force => true do |t|
    t.string   "name"
    t.integer  "mass"
    t.string   "skill"
    t.string   "decay"
    t.integer  "decay_days"
    t.text     "assemble"
    t.integer  "quality"
    t.text     "assemble_skills"
    t.string   "workshop"
    t.text     "tools"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "result",          :default => 1
  end

end
