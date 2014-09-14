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

ActiveRecord::Schema.define(version: 20140914021410) do

  create_table "snotel_stations", force: true do |t|
    t.string   "elevation"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "name"
    t.string   "token"
    t.string   "state"
    t.string   "weather"
    t.string   "temperature"
    t.string   "wind"
    t.string   "triplet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "summary"
    t.float    "humidity"
    t.float    "visibility"
    t.integer  "nearest_storm_distance"
    t.float    "cloud_cover"
    t.float    "pressure"
    t.float    "ozone"
    t.float    "precip_intensity"
    t.float    "precip_probability"
  end

end
