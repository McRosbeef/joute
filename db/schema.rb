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

ActiveRecord::Schema.define(version: 20180226211059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fights", force: :cascade do |t|
    t.integer  "winner_score"
    t.integer  "looser_score"
    t.integer  "winner"
    t.integer  "looser"
    t.integer  "player_1_weapon"
    t.integer  "player_2_weapon"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "attack"
    t.integer  "life"
    t.string   "profile_pic"
    t.integer  "stat"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.integer  "damage"
    t.integer  "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
