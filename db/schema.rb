# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160906004641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "guest_id",               null: false
    t.integer  "site_id",                null: false
    t.date     "start_date",             null: false
    t.date     "end_date",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "guests",     default: 1, null: false
  end

  add_index "bookings", ["guest_id"], name: "index_bookings_on_guest_id", using: :btree
  add_index "bookings", ["site_id"], name: "index_bookings_on_site_id", using: :btree

  create_table "references", force: :cascade do |t|
    t.integer  "author_id",                   null: false
    t.integer  "subject_id",                  null: false
    t.boolean  "recommended", default: false
    t.text     "body",                        null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "references", ["author_id"], name: "index_references_on_author_id", using: :btree
  add_index "references", ["subject_id"], name: "index_references_on_subject_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.integer  "user_id",                                    null: false
    t.string   "address"
    t.float    "lat"
    t.float    "lng"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "max_guests"
    t.string   "preferred_gender", limit: 1
    t.boolean  "kid_friendly",               default: false
    t.boolean  "pet_friendly",               default: false
    t.text     "description"
    t.boolean  "accepting_guests",           default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "city"
  end

  add_index "sites", ["end_date"], name: "index_sites_on_end_date", using: :btree
  add_index "sites", ["lat"], name: "index_sites_on_lat", using: :btree
  add_index "sites", ["lng"], name: "index_sites_on_lng", using: :btree
  add_index "sites", ["start_date"], name: "index_sites_on_start_date", using: :btree
  add_index "sites", ["user_id"], name: "index_sites_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",                  null: false
    t.string   "password_digest",           null: false
    t.string   "session_token",             null: false
    t.string   "firstname",                 null: false
    t.string   "lastname",                  null: false
    t.string   "profile"
    t.date     "birthdate"
    t.string   "gender",          limit: 1
    t.text     "description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
