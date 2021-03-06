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

ActiveRecord::Schema.define(version: 20150301083829) do

  create_table "boards", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "title"
    t.integer  "consumer_id"
    t.integer  "provider_id"
  end

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "name"
    t.text     "url"
    t.integer  "board_id"
  end

  create_table "consumers", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.integer  "provider_id"
    t.date     "birthday"
    t.integer  "gender_cd"
    t.string   "issues",          default: "{}"
  end

  add_index "consumers", ["issues"], name: "index_consumers_on_issues"

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "trelloName"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
