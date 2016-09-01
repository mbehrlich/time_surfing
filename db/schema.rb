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

ActiveRecord::Schema.define(version: 20160901190617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
