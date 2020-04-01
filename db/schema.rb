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

ActiveRecord::Schema.define(version: 2020_04_01_103948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.string "email"
    t.string "url"
    t.string "snapcode"
    t.string "category"
    t.string "address"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "business_id"
    t.string "user"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_transactions_on_business_id"
  end

  add_foreign_key "transactions", "businesses"
end
