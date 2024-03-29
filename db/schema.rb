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

ActiveRecord::Schema.define(:version => 20121203200000) do

  create_table "bonus_points", :force => true do |t|
    t.integer  "points"
    t.date     "when"
    t.string   "note"
    t.integer  "driver_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drivers", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birth"
    t.string   "place"
    t.date     "valid_from"
    t.date     "valid_to"
    t.string   "national_id"
    t.string   "address"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "insurances", :force => true do |t|
    t.date     "from"
    t.date     "to"
    t.string   "note"
    t.integer  "vehicle_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "licence_groups", :force => true do |t|
    t.integer  "driver_id"
    t.date     "valid_from"
    t.date     "valid_to"
    t.string   "group"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "licence_restricts", :force => true do |t|
    t.date     "from"
    t.date     "to"
    t.string   "descr"
    t.integer  "driver_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offence_types", :force => true do |t|
    t.integer  "points"
    t.integer  "fine_from"
    t.integer  "fine_to"
    t.string   "descr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offences", :force => true do |t|
    t.date     "when"
    t.string   "where"
    t.integer  "fine"
    t.string   "descr"
    t.integer  "offence_type_id"
    t.integer  "driver_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "registration_plates", :force => true do |t|
    t.string   "reg"
    t.date     "valid_from"
    t.date     "valid_to"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "driver_id"
    t.integer  "vehicle_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "thefts", :force => true do |t|
    t.date     "when"
    t.string   "where"
    t.boolean  "returned"
    t.integer  "vehicle_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "login"
  end

  create_table "vehicles", :force => true do |t|
    t.integer  "year"
    t.string   "color"
    t.string   "brand"
    t.string   "model"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "vin"
  end

end
