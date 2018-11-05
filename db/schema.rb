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

ActiveRecord::Schema.define(version: 2018_09_02_230715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.string "title"
    t.string "source_name"
    t.text "summary"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "location"
    t.string "description"
    t.string "museId"
    t.string "twitter"
    t.string "image_link"
    t.string "image_link2"
    t.string "image_mini"
    t.string "company_logo"
    t.string "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.string "type"
    t.string "contact"
    t.datetime "date_invited"
    t.datetime "date_due"
    t.string "next_step"
    t.string "response"
    t.string "additional_notes"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_interviews_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.datetime "date_published"
    t.text "contents"
    t.integer "museId"
    t.string "location"
    t.string "level"
    t.string "category"
    t.datetime "date_saved"
    t.boolean "overall_active_status"
    t.datetime "date_applied"
    t.string "application_response_status"
    t.string "interview_invite"
    t.string "offer_status"
    t.bigint "user_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
