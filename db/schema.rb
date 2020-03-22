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

ActiveRecord::Schema.define(version: 2020_03_22_024046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.bigint "line_id", null: false
    t.boolean "link", default: false
    t.string "branch_type", default: "side"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["line_id"], name: "index_branches_on_line_id"
  end

  create_table "incident_reasons", force: :cascade do |t|
    t.bigint "reason_id", null: false
    t.bigint "incident_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_incident_reasons_on_incident_id"
    t.index ["reason_id"], name: "index_incident_reasons_on_reason_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "line_id"
    t.string "reason"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_incidents_on_line_id"
  end

  create_table "ledgers", force: :cascade do |t|
    t.datetime "old_api_log", default: ["2020-03-22 03:00:04"], array: true
    t.datetime "old_uptime_log", default: ["2020-03-22 03:00:04"], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "reasons_log", default: ["2020-03-22 03:00:04"], array: true
    t.datetime "api_log", default: ["2020-03-22 03:00:04"], array: true
    t.datetime "uptime_log", default: ["2020-03-22 03:00:04"], array: true
    t.text "day_log", default: [], array: true
  end

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "status"
    t.string "last_update"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reasons", force: :cascade do |t|
    t.string "severity"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "station_incidents", force: :cascade do |t|
    t.bigint "station_id", null: false
    t.bigint "incident_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_station_incidents_on_incident_id"
    t.index ["station_id"], name: "index_station_incidents_on_station_id"
  end

  create_table "station_lines", force: :cascade do |t|
    t.bigint "branch_id"
    t.bigint "station_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_station_lines_on_branch_id"
    t.index ["station_id"], name: "index_station_lines_on_station_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.string "status"
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
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "branches", "lines"
  add_foreign_key "incident_reasons", "incidents"
  add_foreign_key "incident_reasons", "reasons"
  add_foreign_key "incidents", "lines"
  add_foreign_key "station_incidents", "incidents"
  add_foreign_key "station_incidents", "stations"
end
