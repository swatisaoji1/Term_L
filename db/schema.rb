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

ActiveRecord::Schema.define(version: 20151122171512) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Books_Users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "book_id", null: false
  end

  add_index "Books_Users", ["book_id", "user_id"], name: "index_Books_Users_on_book_id_and_user_id", using: :btree
  add_index "Books_Users", ["user_id", "book_id"], name: "index_Books_Users_on_user_id_and_book_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "author_id"
    t.integer "book_id"
  end

  add_index "authors_books", ["author_id"], name: "index_authors_books_on_author_id", using: :btree
  add_index "authors_books", ["book_id"], name: "index_authors_books_on_book_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "title",                    null: false
    t.string   "isbn",                     null: false
    t.text     "tags",        default: [],              array: true
    t.text     "description"
    t.string   "image_path"
    t.string   "edition"
    t.float    "price",                    null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "quantity"
    t.string   "sale_type"
    t.integer  "user_id"
  end

  add_index "books", ["user_id"], name: "index_books_on_user_id", using: :btree

  create_table "books_categories", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "category_id"
  end

  add_index "books_categories", ["book_id"], name: "index_books_categories_on_book_id", using: :btree
  add_index "books_categories", ["category_id"], name: "index_books_categories_on_category_id", using: :btree

  create_table "books_publishers", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "publisher_id"
  end

  add_index "books_publishers", ["book_id"], name: "index_books_publishers_on_book_id", using: :btree
  add_index "books_publishers", ["publisher_id"], name: "index_books_publishers_on_publisher_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "category_name", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "order_entries", force: :cascade do |t|
    t.integer  "type"
    t.integer  "quantity"
    t.decimal  "unit_cost"
    t.integer  "book_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_entries", ["book_id"], name: "index_order_entries_on_book_id", using: :btree
  add_index "order_entries", ["order_id"], name: "index_order_entries_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "postings", force: :cascade do |t|
    t.integer  "type"
    t.integer  "quantity"
    t.decimal  "unit_price"
    t.integer  "book_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "postings", ["book_id"], name: "index_postings_on_book_id", using: :btree
  add_index "postings", ["user_id"], name: "index_postings_on_user_id", using: :btree

  create_table "publishers", force: :cascade do |t|
    t.string   "publisher_name", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "order_entries", "books"
  add_foreign_key "order_entries", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "postings", "books"
  add_foreign_key "postings", "users"
end
