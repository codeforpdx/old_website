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

ActiveRecord::Schema.define(version: 20200108223457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "location"
    t.datetime "eventstart"
    t.string "timeofevent"
    t.text "url"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "googlemapurl"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "text"
    t.text "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "leadcontact"
    t.text "github_url"
    t.string "technical_lead"
    t.string "content_lead"
    t.text "proposal"
    t.text "problem"
    t.text "goal"
    t.text "scope"
    t.string "color"
    t.text "trello"
    t.text "slack"
    t.text "slides"
  end

  create_table "team_members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "twitter"
    t.string "github"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teammates", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "twitter"
    t.string "github"
    t.text "bio"
    t.text "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "position"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "project"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "idea"
    t.text "details"
  end

end
