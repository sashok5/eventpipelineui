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

ActiveRecord::Schema.define(version: 20180506161609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.integer "RSVP_Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id", "user_id"], name: "index_attendances_on_event_id_and_user_id", unique: true
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "event_categories", primary_key: "category_id", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shortname"
    t.index ["name"], name: "index_event_categories_on_name", unique: true
  end

  create_table "event_groups", primary_key: "group_id", force: :cascade do |t|
    t.integer "category_id"
    t.string "city"
    t.string "country"
    t.string "description"
    t.string "group_name"
    t.string "state"
    t.datetime "created"
    t.integer "members"
  end

  create_table "event_posts", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_posts_on_event_id"
    t.index ["user_id", "created_at"], name: "index_event_posts_on_user_id_and_created_at"
  end

  create_table "event_similarities", force: :cascade do |t|
    t.integer "event_id_1"
    t.integer "event_id_2"
    t.float "similarity"
  end

  create_table "event_tags", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id", "tag_id"], name: "index_event_tags_on_event_id_and_tag_id", unique: true
    t.index ["event_id"], name: "index_event_tags_on_event_id"
    t.index ["tag_id"], name: "index_event_tags_on_tag_id"
  end

  create_table "event_topic_mappings", primary_key: ["topic_id", "event_id"], force: :cascade do |t|
    t.bigint "topic_id", null: false
    t.bigint "event_id", null: false
  end

  create_table "event_topics", primary_key: "topic_id", force: :cascade do |t|
    t.string "topic_string"
  end

  create_table "event_views", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", primary_key: "event_id", force: :cascade do |t|
    t.string "event_host"
    t.string "title"
    t.string "desc"
    t.string "addr"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.bigint "created_by_user_id", null: false
    t.integer "event_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "event_date"
    t.time "event_start_time"
    t.string "snippet_image"
    t.bigint "category_id"
    t.float "latitude"
    t.float "longitude"
    t.integer "group_id"
    t.integer "rsvp_count"
    t.string "meetup_id"
  end

  create_table "popular", primary_key: "event_id", force: :cascade do |t|
    t.integer "num_of_attending"
    t.integer "num_of_clicks"
    t.index ["event_id"], name: "index_popular_on_event_id"
  end

  create_table "recommended", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.integer "rank"
    t.integer "type"
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "follower_id"
    t.bigint "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "tags", primary_key: "tag_id", force: :cascade do |t|
    t.string "name"
    t.integer "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "user_tags", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_user_tags_on_tag_id"
    t.index ["user_id", "tag_id"], name: "index_user_tags_on_user_id_and_tag_id", unique: true
    t.index ["user_id"], name: "index_user_tags_on_user_id"
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_token"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "member_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  create_table "users_in_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  add_foreign_key "attendances", "events", primary_key: "event_id"
  add_foreign_key "attendances", "users", primary_key: "user_id"
  add_foreign_key "event_posts", "events", primary_key: "event_id"
  add_foreign_key "event_posts", "users", primary_key: "user_id"
  add_foreign_key "event_tags", "events", primary_key: "event_id"
  add_foreign_key "event_tags", "tags", primary_key: "tag_id"
  add_foreign_key "event_views", "events", primary_key: "event_id"
  add_foreign_key "event_views", "users", primary_key: "user_id"
  add_foreign_key "events", "event_categories", column: "category_id", primary_key: "category_id"
  add_foreign_key "events", "users", column: "created_by_user_id", primary_key: "user_id"
  add_foreign_key "user_tags", "tags", primary_key: "tag_id"
  add_foreign_key "user_tags", "users", primary_key: "user_id"
end
