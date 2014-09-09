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

ActiveRecord::Schema.define(version: 20140901084710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "plot_no"
    t.string   "street_name"
    t.string   "colony_name"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.string   "mobile"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["project_id"], name: "index_addresses_on_project_id", using: :btree

  create_table "authentications", force: true do |t|
    t.string   "uid"
    t.string   "provider"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministers", force: true do |t|
    t.integer  "name_title_id"
    t.integer  "question_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "myministers", force: true do |t|
    t.string   "name"
    t.integer  "ministry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "name_titles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notices", force: true do |t|
    t.integer  "session_id"
    t.string   "house_diary_no"
    t.date     "answer_date"
    t.string   "subject"
    t.string   "received_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_details", force: true do |t|
    t.string   "question_text"
    t.string   "answer_text"
    t.string   "statement_text"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "question_type_id"
    t.integer  "notice_id"
    t.integer  "section_id"
    t.integer  "question_no"
    t.integer  "session_id"
    t.string   "subject"
    t.date     "answer_date"
    t.date     "received_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ministry_id"
    t.integer  "user_id"
  end

  add_index "questions", ["session_id"], name: "index_questions_on_session_id", using: :btree
  add_index "questions", ["user_id"], name: "index_questions_on_user_id", using: :btree

  create_table "section_officers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "section_officer_id"
    t.integer  "under_secretary_id"
    t.integer  "director_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.integer  "session_type_id"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "deadline"
    t.string   "owner"
  end

  create_table "under_secretaries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                   default: "",    null: false
    t.string   "encrypted_password",      default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "admin",                   default: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "meetup_id"
    t.string   "time_zone"
    t.boolean  "meetup_prompt_dismissed"
    t.string   "gender"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
