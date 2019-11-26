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

ActiveRecord::Schema.define(version: 2019_11_26_144603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.integer "price"
    t.bigint "user_id"
    t.bigint "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_bids_on_material_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.integer "minimum_price"
    t.datetime "deadline"
    t.bigint "site_id"
    t.bigint "site_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_materials_on_site_id"
    t.index ["site_user_id"], name: "index_materials_on_site_user_id"
  end

  create_table "site_users", force: :cascade do |t|
    t.boolean "manager", default: false
    t.bigint "user_id"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_site_users_on_site_id"
    t.index ["user_id"], name: "index_site_users_on_user_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "address"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bids", "materials"
  add_foreign_key "bids", "users"
  add_foreign_key "materials", "site_users"
  add_foreign_key "materials", "sites"
  add_foreign_key "site_users", "sites"
  add_foreign_key "site_users", "users"
end
