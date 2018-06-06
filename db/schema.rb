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

ActiveRecord::Schema.define(version: 2018_06_06_130143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "sector"
    t.string "activity_area"
    t.string "label"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naf_jobs", force: :cascade do |t|
    t.text "description"
    t.string "naf_code"
    t.string "lvl1"
    t.text "lvl1_desc"
    t.string "lvl2"
    t.text "lvl2_desc"
    t.string "lvl3"
    t.text "lvl3_desc"
    t.string "lvl4"
    t.text "lvl4_desc"
    t.string "lvl5"
    t.text "lvl5_desc"
    t.integer "siblings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
