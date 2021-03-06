# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_28_060233) do

  create_table "addresses", force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.integer "establishment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establishment_id"], name: "index_addresses_on_establishment_id"
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "registration_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "establishment_id", null: false
    t.string "name"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establishment_id"], name: "index_events_on_establishment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "date_of_birth"
    t.string "email"
    t.string "phone"
    t.integer "establishment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establishment_id"], name: "index_users_on_establishment_id"
  end

  add_foreign_key "addresses", "establishments"
  add_foreign_key "events", "establishments"
  add_foreign_key "users", "establishments"
end
