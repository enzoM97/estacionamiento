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

ActiveRecord::Schema.define(version: 20170929201344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_places", force: :cascade do |t|
    t.time     "hora_entrada"
    t.time     "hora_salida"
    t.date     "fecha_entrada"
    t.date     "fecha_salida"
    t.integer  "car_id"
    t.integer  "place_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "car_places", ["car_id"], name: "index_car_places_on_car_id", using: :btree
  add_index "car_places", ["place_id"], name: "index_car_places_on_place_id", using: :btree

  create_table "cars", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "tag"
    t.integer  "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cars", ["owner_id"], name: "index_cars_on_owner_id", using: :btree

  create_table "owner_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "owner_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "owners", ["owner_type_id"], name: "index_owners_on_owner_type_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.boolean  "occupied"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "car_places", "cars"
  add_foreign_key "car_places", "places"
  add_foreign_key "cars", "owners"
  add_foreign_key "owners", "owner_types"
end
