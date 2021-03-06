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

ActiveRecord::Schema.define(version: 20161006024756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.text     "username"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "img_url"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "year"
    t.text     "title"
    t.text     "description"
    t.text     "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "films", force: :cascade do |t|
    t.string  "title"
    t.string  "distributor"
    t.string  "year"
    t.string  "description"
    t.string  "img_url"
    t.boolean "favorite",    default: false
  end

  create_table "indie_films", force: :cascade do |t|
    t.string   "title"
    t.string   "distributor"
    t.string   "year"
    t.string   "description"
    t.string   "img_url"
    t.boolean  "favorite",    default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "marketings", force: :cascade do |t|
    t.string  "title"
    t.string  "year"
    t.string  "distributor"
    t.string  "description"
    t.string  "img_url"
    t.boolean "favorite",    default: false
  end

  create_table "musicology_services", force: :cascade do |t|
    t.text "description"
    t.text "name"
    t.text "title"
    t.text "bio"
    t.text "img_url"
    t.text "bullets"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "film_id"
    t.integer  "tv_id"
    t.integer  "marketing_id"
    t.integer  "indie_film_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "projects", ["film_id"], name: "index_projects_on_film_id", using: :btree
  add_index "projects", ["indie_film_id"], name: "index_projects_on_indie_film_id", using: :btree
  add_index "projects", ["marketing_id"], name: "index_projects_on_marketing_id", using: :btree
  add_index "projects", ["tv_id"], name: "index_projects_on_tv_id", using: :btree

  create_table "seasons", force: :cascade do |t|
    t.integer  "tv_id"
    t.string   "title"
    t.string   "img_url"
    t.integer  "year"
    t.integer  "eppisode_count"
    t.boolean  "favorite",       default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.text "name"
    t.text "title"
    t.text "bio"
    t.text "img_url"
  end

  create_table "tvs", force: :cascade do |t|
    t.text     "title"
    t.string   "year"
    t.string   "season"
    t.text     "description"
    t.text     "network"
    t.text     "img_url"
    t.boolean  "favorite",    default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
