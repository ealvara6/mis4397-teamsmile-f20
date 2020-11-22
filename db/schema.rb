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

ActiveRecord::Schema.define(version: 20201119044525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.string   "favoritable_type",                      null: false
    t.integer  "favoritable_id",                        null: false
    t.string   "favoritor_type",                        null: false
    t.integer  "favoritor_id",                          null: false
    t.string   "scope",            default: "favorite", null: false
    t.boolean  "blocked",          default: false,      null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["blocked"], name: "index_favorites_on_blocked", using: :btree
    t.index ["favoritable_id", "favoritable_type"], name: "fk_favoritables", using: :btree
    t.index ["favoritable_type", "favoritable_id"], name: "index_favorites_on_favoritable_type_and_favoritable_id", using: :btree
    t.index ["favoritor_id", "favoritor_type"], name: "fk_favorites", using: :btree
    t.index ["favoritor_type", "favoritor_id"], name: "index_favorites_on_favoritor_type_and_favoritor_id", using: :btree
    t.index ["scope"], name: "index_favorites_on_scope", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "types"
    t.string   "restrictions"
    t.integer  "time"
    t.string   "yield"
    t.string   "ingredients"
    t.string   "instructions"
    t.string   "image"
    t.string   "link"
    t.string   "make"
    t.string   "make_by"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "blurb"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
