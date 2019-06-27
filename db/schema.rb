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

ActiveRecord::Schema.define(version: 2019_06_27_080234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.integer "metacritic"
    t.string "imageurl"
    t.string "platform"
    t.string "genre"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "usergame_id"
    t.index ["usergame_id"], name: "index_reviews_on_usergame_id"
  end

  create_table "starratings", force: :cascade do |t|
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "game_id"
    t.index ["game_id"], name: "index_starratings_on_game_id"
    t.index ["user_id"], name: "index_starratings_on_user_id"
  end

  create_table "usergames", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.index ["game_id"], name: "index_usergames_on_game_id"
    t.index ["user_id"], name: "index_usergames_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.text "bio"
    t.integer "accountbalance"
  end

  add_foreign_key "reviews", "usergames"
  add_foreign_key "starratings", "games"
  add_foreign_key "starratings", "users"
  add_foreign_key "usergames", "games"
  add_foreign_key "usergames", "users"
end
