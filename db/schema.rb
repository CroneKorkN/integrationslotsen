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

ActiveRecord::Schema.define(version: 20160727124305) do

  create_table "admins", force: :cascade do |t|
    t.integer "member_id"
    t.index ["member_id"], name: "index_admins_on_member_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "language_id"
    t.string   "location_address"
    t.integer  "location_zipcode"
    t.string   "location_city"
    t.datetime "birthday"
    t.datetime "date_of_arrival"
    t.datetime "registration_date"
    t.integer  "location_id"
    t.index ["birthday"], name: "index_clients_on_birthday"
    t.index ["language_id"], name: "index_clients_on_language_id"
    t.index ["location_city"], name: "index_clients_on_location_city"
    t.index ["location_id"], name: "index_clients_on_location_id"
    t.index ["location_zipcode"], name: "index_clients_on_location_zipcode"
    t.index [nil], name: "index_clients_on_language"
  end

  create_table "guides", force: :cascade do |t|
    t.integer "member_id"
    t.integer "location_id"
    t.index ["location_id"], name: "index_guides_on_location_id"
    t.index ["member_id"], name: "index_guides_on_member_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.integer  "zipcode"
    t.string   "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_locations_on_address"
    t.index ["town"], name: "index_locations_on_town"
    t.index ["zipcode"], name: "index_locations_on_zipcode"
  end

  create_table "members", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.string   "name"
    t.datetime "registration_date"
    t.index ["email"], name: "index_members_on_email"
    t.index ["username"], name: "index_members_on_username"
  end

  create_table "mission_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "missions", force: :cascade do |t|
    t.integer  "mission_type_id"
    t.integer  "guide_id"
    t.integer  "client_id"
    t.datetime "begin"
    t.datetime "end"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["begin"], name: "index_missions_on_begin"
    t.index ["client_id"], name: "index_missions_on_client_id"
    t.index ["end"], name: "index_missions_on_end"
    t.index ["guide_id"], name: "index_missions_on_guide_id"
    t.index ["mission_type_id"], name: "index_missions_on_mission_type_id"
    t.index [nil], name: "index_missions_on_client"
    t.index [nil], name: "index_missions_on_guide"
    t.index [nil], name: "index_missions_on_mission_type"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "guide_id"
    t.integer "seminar_id"
    t.index ["guide_id"], name: "index_registrations_on_guide_id"
    t.index ["seminar_id"], name: "index_registrations_on_seminar_id"
    t.index [nil], name: "index_registrations_on_guide"
    t.index [nil], name: "index_registrations_on_seminar"
  end

  create_table "seminar_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "seminars", force: :cascade do |t|
    t.integer  "seminar_type_id"
    t.datetime "date"
    t.index ["date"], name: "index_seminars_on_date"
    t.index ["seminar_type_id"], name: "index_seminars_on_seminar_type_id"
    t.index [nil], name: "index_seminars_on_seminar_type"
  end

end
