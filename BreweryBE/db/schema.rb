# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_18_193315) do

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.integer "brewery_id", null: false
    t.string "typeBeer"
    t.float "alc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brewery_id"], name: "index_beers_on_brewery_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "address"
    t.boolean "food"
    t.boolean "twentyone"
    t.boolean "dog"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "brewery_members", force: :cascade do |t|
    t.integer "brewery_id", null: false
    t.integer "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brewery_id"], name: "index_brewery_members_on_brewery_id"
    t.index ["member_id"], name: "index_brewery_members_on_member_id"
  end

  create_table "member_fav_beers", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "beer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beer_id"], name: "index_member_fav_beers_on_beer_id"
    t.index ["member_id"], name: "index_member_fav_beers_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "favBeer"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "beers", "breweries"
  add_foreign_key "brewery_members", "breweries"
  add_foreign_key "brewery_members", "members"
  add_foreign_key "member_fav_beers", "beers"
  add_foreign_key "member_fav_beers", "members"
end
