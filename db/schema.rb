ActiveRecord::Schema.define(version: 20180910053021) do

  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "twepic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twepics", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.text "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
