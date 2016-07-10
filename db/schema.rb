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

ActiveRecord::Schema.define(version: 20160710155919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "string"
    t.string   "version"
    t.string   "released_on"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fixes", force: true do |t|
    t.integer  "version_id"
    t.integer  "book_id"
    t.integer  "contributor_id"
    t.string   "type"
    t.integer  "fixed"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fixes", ["book_id"], name: "index_fixes_on_book_id", using: :btree
  add_index "fixes", ["contributor_id"], name: "index_fixes_on_contributor_id", using: :btree
  add_index "fixes", ["version_id"], name: "index_fixes_on_version_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.integer  "book_id"
    t.string   "version"
    t.date     "released_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["book_id"], name: "index_versions_on_book_id", using: :btree

end
