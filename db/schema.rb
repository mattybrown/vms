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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141218014907) do

  create_table "costs", force: true do |t|
    t.string   "recipient"
    t.float    "price"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.string   "registration_plate"
    t.string   "make"
    t.string   "model"
    t.string   "chassis_vin"
    t.integer  "vehicle_year"
    t.string   "fuel_type"
    t.integer  "odometer_reading"
    t.string   "colour"
    t.integer  "cc_rating"
    t.datetime "wof_details"
    t.float    "purchase_price"
    t.float    "sale_price"
    t.datetime "sale_date"
    t.datetime "purchase_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
