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

ActiveRecord::Schema.define(version: 20160513200847) do

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "work_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.string   "geoname_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salaries", force: true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "negotiated"
    t.text     "notes"
    t.string   "location_geoname_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "compensation_cents",    default: 0,     null: false
    t.string   "compensation_currency", default: "USD", null: false
  end

  create_table "students", force: true do |t|
    t.string   "gender"
    t.string   "dbc_location"
    t.boolean  "can_view_publicly"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
