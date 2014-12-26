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

ActiveRecord::Schema.define(version: 20141226075336) do

  create_table "fansubs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "homepage",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "fansub_id",  limit: 4
    t.string   "title",      limit: 255
    t.string   "image",      limit: 255
    t.string   "public",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "link",       limit: 255
  end

  add_index "posts", ["fansub_id"], name: "index_posts_on_fansub_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "post",        limit: 255
    t.integer  "fansub_id",   limit: 4
    t.string   "title",       limit: 255
    t.string   "image_url",   limit: 255
    t.string   "public_date", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "link",        limit: 255
  end

  add_index "tags", ["fansub_id"], name: "index_tags_on_fansub_id", using: :btree

  add_foreign_key "posts", "fansubs"
  add_foreign_key "tags", "fansubs"
end
