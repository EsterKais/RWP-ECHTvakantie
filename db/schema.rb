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

ActiveRecord::Schema.define(version: 20161025102132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "style"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tphotos", force: :cascade do |t|
    t.integer  "theme_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_tphotos_on_theme_id", using: :btree
  end

  create_table "vacations", force: :cascade do |t|
    t.string   "title"
    t.string   "country"
    t.string   "region"
    t.string   "price"
    t.text     "description"
    t.boolean  "show"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vphotos", force: :cascade do |t|
    t.integer  "vacation_id"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["vacation_id"], name: "index_vphotos_on_vacation_id", using: :btree
  end

  add_foreign_key "tphotos", "themes"
  add_foreign_key "vphotos", "vacations"
end
