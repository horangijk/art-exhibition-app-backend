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

ActiveRecord::Schema.define(version: 2019_03_12_144910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exhibitions", force: :cascade do |t|
    t.string "name"
    t.string "venue_name"
    t.string "venue_address"
    t.string "venue_phone"
    t.string "venue_access"
    t.string "venue_area"
    t.integer "venue_openinghour"
    t.integer "venue_closinghour"
    t.string "image"
    t.string "price"
    t.integer "permanent_event"
    t.string "description"
    t.string "media"
    t.string "start_date"
    t.string "end_date"
    t.integer "days_remaining"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_exhibitions", force: :cascade do |t|
    t.string "user_id"
    t.string "exhibition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "home_neighborhood"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
