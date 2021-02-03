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

ActiveRecord::Schema.define(version: 2021_01_22_094055) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "price"
    t.string "integer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custaccs", force: :cascade do |t|
    t.integer "accno"
    t.string "acctype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id", null: false
    t.index ["customer_id"], name: "index_custaccs_on_customer_id"
  end

  create_table "customer_1s", force: :cascade do |t|
    t.string "name"
    t.string "addr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "pass"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "information", force: :cascade do |t|
    t.integer "empid"
    t.string "empnm"
    t.string "add"
    t.string "dept"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empid"], name: "index_information_on_empid"
  end

  create_table "user_data", force: :cascade do |t|
    t.string "user_name"
    t.string "email_id"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "userinfos", force: :cascade do |t|
    t.string "user_name"
    t.string "email_id"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "mobile"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "custaccs", "customers"
end
