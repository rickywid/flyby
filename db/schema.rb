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

ActiveRecord::Schema.define(version: 20151108004351) do

  create_table "accomodations", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "destination_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "destinations_id"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "add_notes"
  end

  add_index "accomodations", ["destination_id"], name: "index_accomodations_on_destination_id"

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
    t.date     "start_date"
    t.date     "end_date"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.date     "date"
    t.text     "address"
  end

  add_index "locations", ["destination_id"], name: "index_locations_on_destination_id"

end
