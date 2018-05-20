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

ActiveRecord::Schema.define(version: 20180506195250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.integer "lib_id"
    t.string "name_book", limit: 2000, null: false
    t.string "autor", limit: 1000, null: false
    t.string "code", limit: 100
    t.string "publiching", limit: 256, null: false
    t.date "date_pub"
    t.integer "price"
    t.integer "date_start"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "lib_id"
    t.string "name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.string "second_name", limit: 100
    t.date "birth_date"
    t.date "job_date"
    t.string "position", limit: 256, null: false
    t.string "education", limit: 100
  end

  create_table "libs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "book_id"
    t.integer "employee_id"
    t.string "libs_name", limit: 1000, null: false
    t.string "libs_adres", limit: 500, null: false
    t.string "libs_number", limit: 100, null: false
  end

  create_table "outs", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.integer "id_user"
    t.date "date_grant", null: false
    t.date "date_return"
  end

  create_table "users", force: :cascade do |t|
    t.integer "lib_id"
    t.string "user_last_name", limit: 100, null: false
    t.string "user_name", limit: 100, null: false
    t.string "user_second_name", limit: 100
    t.string "user_adres", limit: 1000, null: false
    t.string "phone"
    t.string "number_ticket", null: false
  end

end
