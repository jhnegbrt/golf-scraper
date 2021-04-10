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

ActiveRecord::Schema.define(version: 2021_04_09_192152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "betters", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.integer "score_guess"
    t.integer "double_bogeys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "betters_players", id: false, force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "better_id", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "place"
    t.integer "score"
    t.string "name"
    t.integer "double_bogeys"
    t.integer "round_1"
    t.integer "round_2"
    t.integer "round_3"
    t.integer "round_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
