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

ActiveRecord::Schema[7.0].define(version: 2024_09_03_031655) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "message_visits", force: :cascade do |t|
    t.bigint "message_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_message_visits_on_message_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content", null: false
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "expiration_limit", null: false
    t.string "expiration_type", null: false
    t.integer "message_visits_count"
  end

  add_foreign_key "message_visits", "messages"
end
