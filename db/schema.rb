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

ActiveRecord::Schema.define(version: 20170220132545) do

  create_table "atttachments", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "issue_id"
    t.integer  "task_id"
    t.text     "description"
    t.string   "attachment_name"
    t.text     "attachment_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.integer  "task_id"
    t.decimal  "amount"
    t.decimal  "extra_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.text     "stock_title"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "privileges", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "create_right"
    t.boolean  "read_right"
    t.boolean  "update_right"
    t.boolean  "delete_right"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "projectizations", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "cover_image"
    t.integer  "progress"
    t.boolean  "is_archived"
    t.datetime "date_archived"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.decimal  "budget"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "title"
    t.text     "description"
    t.string   "status"
    t.integer  "progress"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.decimal  "budget"
    t.decimal  "cost"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "company"
    t.text     "profile_image"
    t.text     "password_digest"
    t.text     "remember_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "workmanships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
