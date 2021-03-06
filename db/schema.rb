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

ActiveRecord::Schema.define(version: 20190404110320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "receiver_id"
    t.integer "sender_id"
    t.index ["receiver_id"], name: "index_friends_on_receiver_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "caption_file_name"
    t.string "caption_content_type"
    t.integer "caption_file_size"
    t.datetime "caption_updated_at"
    t.bigint "signup_id"
    t.index ["signup_id"], name: "index_posts_on_signup_id"
  end

  create_table "sign_ups", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "password_confirm"
  end

  create_table "signups", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
  end

  add_foreign_key "friends", "signups", column: "receiver_id"
  add_foreign_key "posts", "signups"
end
