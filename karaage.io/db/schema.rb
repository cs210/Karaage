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

ActiveRecord::Schema.define(version: 20150310034055) do

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "post_date"
    t.string   "post_title"
    t.string   "post_content"
    t.integer  "post_is_published"
    t.integer  "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "tags", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tag_string"
    t.integer  "post_id"
  end

  add_index "tags", ["post_id"], name: "index_tags_on_post_id"

  create_table "testers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tester_first_name"
    t.string   "tester_last_name"
    t.string   "tester_email"
    t.string   "tester_organization"
    t.string   "tester_role"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_first_name"
    t.string   "user_last_name"
    t.string   "user_email"
    t.string   "user_salt"
    t.string   "user_hash"
    t.string   "user_organization"
    t.integer  "user_privileges"
  end

end
