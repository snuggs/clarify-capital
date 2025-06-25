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

ActiveRecord::Schema[7.2].define(version: 2025_06_25_104300) do
  create_table "clients", force: :cascade do |t|
    t.string "first_name", limit: 30, null: false
    t.string "last_name", limit: 50, null: false
    t.integer "credit_score", null: false
    t.string "phone", limit: 15, null: false
    t.string "email", limit: 200, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
  end

  create_table "lenders", force: :cascade do |t|
    t.string "name", null: false
    t.integer "minimum_loan", null: false
    t.integer "maximum_loan", default: 5000000, null: false
    t.integer "minimum_credit", null: false
    t.decimal "interest", precision: 3, scale: 3, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest"], name: "index_lenders_on_interest"
    t.index ["minimum_credit"], name: "index_lenders_on_minimum_credit"
  end

  create_table "loans", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "lender_id", null: false
    t.integer "amount", null: false
    t.date "start", default: "2025-06-25", null: false
    t.date "due", null: false
    t.string "status", default: "new", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_loans_on_client_id"
    t.index ["lender_id"], name: "index_loans_on_lender_id"
  end

  add_foreign_key "loans", "clients"
  add_foreign_key "loans", "lenders"
end
