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

ActiveRecord::Schema.define(version: 20140907034536) do

  create_table "composition_parts", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "composition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "composition_parts_roles", force: true do |t|
    t.integer "composition_part_id"
    t.integer "role_id"
  end

  create_table "composition_resources", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "composition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compositions", force: true do |t|
    t.string   "title"
    t.string   "composer"
    t.string   "arranger"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "musician_id"
  end

  create_table "compositions_tags", force: true do |t|
    t.integer "composition_id"
    t.integer "tag_id"
  end

  create_table "ensembles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intervals", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "notes"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians_performances", force: true do |t|
    t.integer "musician_id"
    t.integer "performance_id"
  end

  create_table "performance_types", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performances", force: true do |t|
    t.date     "date"
    t.time     "start_time"
    t.integer  "ensemble_id"
    t.integer  "location_id"
    t.integer  "performance_type_id"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "performances", ["ensemble_id"], name: "index_performances_on_ensemble_id"
  add_index "performances", ["location_id"], name: "index_performances_on_location_id"
  add_index "performances", ["performance_type_id"], name: "index_performances_on_performance_type_id"
  add_index "performances", ["program_id"], name: "index_performances_on_program_id"

  create_table "positions", force: true do |t|
    t.integer  "musician_id"
    t.integer  "ensemble_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["ensemble_id"], name: "index_positions_on_ensemble_id"
  add_index "positions", ["musician_id"], name: "index_positions_on_musician_id"
  add_index "positions", ["role_id"], name: "index_positions_on_role_id"

  create_table "program_compositions", force: true do |t|
    t.integer  "list_order"
    t.integer  "program_id"
    t.integer  "composition_id"
    t.integer  "interval_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_compositions", ["composition_id"], name: "index_program_compositions_on_composition_id"
  add_index "program_compositions", ["interval_id"], name: "index_program_compositions_on_interval_id"
  add_index "program_compositions", ["program_id"], name: "index_program_compositions_on_program_id"

  create_table "programs", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
