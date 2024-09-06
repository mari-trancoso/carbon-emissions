# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_09_06_131858) do
  create_table "emission_sources", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "emission_source_id", null: false
    t.float "quantity"
    t.string "user_name"
    t.date "start_date"
    t.date "end_date"
    t.float "co2"
    t.float "ch4"
    t.float "n2o"
    t.float "co2_eq"
    t.float "co2_bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emission_source_id"], name: "index_entries_on_emission_source_id"
  end

  add_foreign_key "entries", "emission_sources"
end
