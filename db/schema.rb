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

ActiveRecord::Schema.define(version: 20150918182302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_snowfall_readings", force: true do |t|
    t.datetime "date"
    t.float    "snow_water_equivalent_in"
    t.float    "change_in_snow_water_equivalent_in"
    t.integer  "snow_depth_in"
    t.integer  "change_in_snow_depth_in"
    t.integer  "daily_snowfall_trackable_id"
    t.string   "daily_snowfall_trackable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "hourly_snowfall_readings", force: true do |t|
    t.datetime "date"
    t.float    "snow_water_equivalent_in"
    t.float    "change_in_snow_water_equivalent_in"
    t.float    "snow_depth_in"
    t.float    "change_in_snow_depth_in"
    t.integer  "hourly_snowfall_trackable_id"
    t.string   "hourly_snowfall_trackable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resorts", force: true do |t|
    t.string   "name"
    t.string   "token"
    t.string   "state"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "base_depth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.integer  "vertical"
    t.integer  "elevation_top"
    t.integer  "elevation_base"
    t.integer  "skiable_area"
    t.integer  "runs"
    t.integer  "chairlifts"
    t.integer  "average_snowfall"
    t.boolean  "night_skiing"
    t.boolean  "snowmaking"
    t.string   "website"
    t.integer  "green_percentage"
    t.integer  "blue_percentage"
    t.string   "black_percentage"
  end

  create_table "snotel_stations", force: true do |t|
    t.string   "elevation"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "name"
    t.string   "token"
    t.string   "state"
    t.string   "triplet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "last_24_hours_snowfall_in"
    t.integer  "last_7_days_snowfall_in"
  end

  create_table "weathers", force: true do |t|
    t.integer  "weatherable_id"
    t.string   "weatherable_type"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "weather"
    t.string   "summary"
    t.float    "temperature"
    t.float    "wind"
    t.float    "visibility"
    t.float    "humidity"
    t.integer  "nearest_storm_distance"
    t.float    "cloud_cover"
    t.float    "pressure"
    t.float    "ozone"
    t.float    "precip_intensity"
    t.float    "precip_probability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
