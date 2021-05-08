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

ActiveRecord::Schema.define(version: 2021_04_10_171512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "component", force: :cascade do |t|
    t.string "name", null: false
    t.string "type", null: false
    t.string "brand_name"
    t.text "description"
    t.integer "supplier", null: false
    t.integer "articulation", null: false
    t.string "supplier_catalogue_number"
    t.string "rating"
    t.decimal "list_price"
    t.decimal "ramsay_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_codes", force: :cascade do |t|
    t.string "di", null: false
    t.string "code", null: false
    t.string "code_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_profile", force: :cascade do |t|
    t.uuid "uuid", default: -> { "uuid_generate_v4()" }, null: false
    t.string "name", null: false
    t.string "nickname"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
