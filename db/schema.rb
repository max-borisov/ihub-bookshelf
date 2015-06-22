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

ActiveRecord::Schema.define(version: 20150620193823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "description"
    t.float    "price"
    t.date     "pub_date"
    t.string   "amazon_id"
    t.text     "keywords"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "isbn",        default: "", null: false
  end

  add_index "books", ["isbn"], name: "index_books_on_isbn", using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_items", ["book_id"], name: "index_order_items_on_book_id", using: :btree
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.decimal  "total_price", precision: 10, scale: 2
    t.integer  "user_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shopping_cart_items", ["book_id"], name: "index_shopping_cart_items_on_book_id", using: :btree
  add_index "shopping_cart_items", ["user_id"], name: "index_shopping_cart_items_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                default: "",    null: false
    t.string   "email"
    t.boolean  "admin",               default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",  default: "",    null: false
    t.datetime "remember_created_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  add_foreign_key "order_items", "books"
  add_foreign_key "order_items", "orders"
  add_foreign_key "shopping_cart_items", "books"
  add_foreign_key "shopping_cart_items", "users"
end
