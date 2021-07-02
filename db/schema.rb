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

ActiveRecord::Schema.define(version: 2021_07_02_202320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "giftcards", force: :cascade do |t|
    t.string "number", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "message"
    t.date "expiration"
    t.index ["number"], name: "index_giftcards_on_number", unique: true
    t.index ["reset_password_token"], name: "index_giftcards_on_reset_password_token", unique: true
  end

  create_table "transactions", force: :cascade do |t|
    t.string "type"
    t.integer "value"
    t.string "date"
    t.string "store"
    t.bigint "giftcard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["giftcard_id"], name: "index_transactions_on_giftcard_id"
  end

  add_foreign_key "transactions", "giftcards"
end
