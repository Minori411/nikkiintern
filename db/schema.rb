# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_29_051821) do
  create_table "areas", charset: "utf8mb3", force: :cascade do |t|
    t.integer "area_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", charset: "utf8mb3", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.text "body"
    t.string "image"
    t.boolean "archive", default: false, null: false
    t.bigint "user_id", null: false
    t.bigint "area_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "discarded_at"
    t.index ["area_id"], name: "index_news_on_area_id"
    t.index ["discarded_at"], name: "index_news_on_discarded_at"
    t.index ["section_id"], name: "index_news_on_section_id"
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "news_area_sections", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "news_id", null: false
    t.bigint "area_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_news_area_sections_on_area_id"
    t.index ["news_id"], name: "index_news_area_sections_on_news_id"
    t.index ["section_id"], name: "index_news_area_sections_on_section_id"
  end

  create_table "news_reads", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "news_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["news_id"], name: "index_news_reads_on_news_id"
    t.index ["user_id"], name: "index_news_reads_on_user_id"
  end

  create_table "notifications", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "news_id", null: false
    t.bigint "schedule_id", null: false
    t.boolean "checked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["news_id"], name: "index_notifications_on_news_id"
    t.index ["schedule_id"], name: "index_notifications_on_schedule_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "schedule_area_sections", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "schedule_id", null: false
    t.bigint "area_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_schedule_area_sections_on_area_id"
    t.index ["schedule_id"], name: "index_schedule_area_sections_on_schedule_id"
    t.index ["section_id"], name: "index_schedule_area_sections_on_section_id"
  end

  create_table "schedule_reads", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "schedule_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_schedule_reads_on_schedule_id"
    t.index ["user_id"], name: "index_schedule_reads_on_user_id"
  end

  create_table "schedules", charset: "utf8mb3", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.string "title"
    t.string "extendedprops"
    t.string "description"
    t.boolean "allday", default: false, null: false
    t.string "eventColor"
    t.string "color"
    t.string "events"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "sections", charset: "utf8mb3", force: :cascade do |t|
    t.integer "section_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_area_sections", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "area_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_user_area_sections_on_area_id"
    t.index ["section_id"], name: "index_user_area_sections_on_section_id"
    t.index ["user_id"], name: "index_user_area_sections_on_user_id"
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "userstyle"
    t.boolean "is_deleted", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "news", "areas"
  add_foreign_key "news", "sections"
  add_foreign_key "news", "users"
  add_foreign_key "news_area_sections", "areas"
  add_foreign_key "news_area_sections", "news"
  add_foreign_key "news_area_sections", "sections"
  add_foreign_key "news_reads", "news"
  add_foreign_key "news_reads", "users"
  add_foreign_key "notifications", "news"
  add_foreign_key "notifications", "schedules"
  add_foreign_key "notifications", "users"
  add_foreign_key "schedule_area_sections", "areas"
  add_foreign_key "schedule_area_sections", "schedules"
  add_foreign_key "schedule_area_sections", "sections"
  add_foreign_key "schedule_reads", "schedules"
  add_foreign_key "schedule_reads", "users"
  add_foreign_key "schedules", "users"
  add_foreign_key "user_area_sections", "areas"
  add_foreign_key "user_area_sections", "sections"
  add_foreign_key "user_area_sections", "users"
end
