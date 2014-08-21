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

ActiveRecord::Schema.define(version: 20140821030903) do

  create_table "outcomes", force: true do |t|
    t.string   "title",      null: false
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pool_id"
  end

  add_index "outcomes", ["pool_id"], name: "index_outcomes_on_pool_id"
  add_index "outcomes", ["title"], name: "index_outcomes_on_title", unique: true

  create_table "pools", force: true do |t|
    t.string   "title",                    null: false
    t.integer  "buy_in",     default: 500, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wagers", force: true do |t|
    t.integer  "outcome_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wagers", ["outcome_id"], name: "index_wagers_on_outcome_id"

end
