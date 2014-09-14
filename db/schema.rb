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

ActiveRecord::Schema.define(version: 20140914180054) do

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
