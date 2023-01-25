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

ActiveRecord::Schema[7.0].define(version: 2023_01_25_191612) do
  create_table "cities", force: :cascade do |t|
    t.text "name", null: false
    t.integer "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_cities_on_name"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name"
  end

  create_table "genders", force: :cascade do |t|
    t.text "label", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label"], name: "index_genders_on_label"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "username", null: false
    t.integer "user_id", null: false
    t.integer "gender_id", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "birthdate"
    t.index ["city_id"], name: "index_profiles_on_city_id"
    t.index ["gender_id"], name: "index_profiles_on_gender_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
    t.index ["username"], name: "index_profiles_on_username"
  end

  create_table "states", force: :cascade do |t|
    t.text "name", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
    t.index ["name"], name: "index_states_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.text "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "profiles", "cities"
  add_foreign_key "profiles", "genders"
  add_foreign_key "profiles", "users"
  add_foreign_key "states", "countries"
end
