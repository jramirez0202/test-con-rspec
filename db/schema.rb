# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_31_221840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assemblies", force: :cascade do |t|
    t.string "name"
    t.integer "percent"
    t.bigint "wine_id"
    t.bigint "strain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strain_id"], name: "index_assemblies_on_strain_id"
    t.index ["wine_id"], name: "index_assemblies_on_wine_id"
  end

  create_table "critics", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "oenologist_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["oenologist_id"], name: "index_critics_on_oenologist_id"
    t.index ["wine_id"], name: "index_critics_on_wine_id"
  end

  create_table "oenologists", force: :cascade do |t|
    t.string "name"
    t.string "nacionality"
    t.integer "age"
    t.boolean "writer"
    t.boolean "editor"
    t.boolean "reviewer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.datetime "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assemblies", "strains"
  add_foreign_key "assemblies", "wines"
  add_foreign_key "critics", "oenologists"
  add_foreign_key "critics", "wines"
end
