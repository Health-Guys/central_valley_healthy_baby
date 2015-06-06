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

ActiveRecord::Schema.define(version: 20150606082803) do

  create_table "diseases", force: true do |t|
    t.text     "description"
    t.string   "name"
    t.string   "link"
    t.text     "early_signs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prevalances", force: true do |t|
    t.string   "case_count"
    t.integer  "disease_id"
    t.float    "screened"
    t.integer  "california_region"
    t.decimal  "disorder_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prevalances", ["disease_id"], name: "index_prevalances_on_disease_id"

  create_table "screening_locations", force: true do |t|
    t.integer  "disease_id"
    t.string   "street"
    t.string   "name"
    t.string   "phone"
    t.string   "zipcode"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
  end

  add_index "screening_locations", ["disease_id"], name: "index_screening_locations_on_disease_id"

end
