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

ActiveRecord::Schema[7.0].define(version: 2023_06_30_041819) do
  create_table "star_signs", force: :cascade do |t|
    t.string "date_range"
    t.string "name"
    t.string "blurb"
    t.string "image"
    t.string "default_compatibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "auth0_id"
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "gender"
    t.string "preference"
    t.string "bio"
    t.string "birthday"
    t.string "image"
    t.integer "star_sign_id"
    t.string "matches"
    t.string "compatibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_sign_id"], name: "index_users_on_star_sign_id"
  end

end
