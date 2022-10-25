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

ActiveRecord::Schema[7.0].define(version: 2022_10_25_091005) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.boolean "status"
    t.bigint "client_id", null: false
    t.bigint "category_id", null: false
    t.bigint "offer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.index ["category_id"], name: "index_bookings_on_category_id"
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["offer_id"], name: "index_bookings_on_offer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.boolean "status"
    t.text "description"
    t.integer "required_number"
    t.integer "percentage"
    t.bigint "sub_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "time"
    t.index ["sub_category_id"], name: "index_offers_on_sub_category_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "time"
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "categories"
  add_foreign_key "bookings", "clients"
  add_foreign_key "bookings", "offers"
  add_foreign_key "offers", "sub_categories"
  add_foreign_key "sub_categories", "categories"
end
