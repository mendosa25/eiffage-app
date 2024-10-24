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

ActiveRecord::Schema[7.1].define(version: 2024_10_23_132936) do
  create_table "machine_rapports", force: :cascade do |t|
    t.date "date"
    t.integer "oil_level"
    t.integer "water_level"
    t.integer "sand_level"
    t.string "review"
    t.date "date_bcc"
    t.date "date_extincteur"
    t.integer "machine_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_rapports_on_machine_id"
    t.index ["user_id"], name: "index_machine_rapports_on_user_id"
  end

  create_table "machines", force: :cascade do |t|
    t.integer "identification"
    t.integer "model"
    t.string "weight"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "matricule"
    t.string "phone"
    t.string "adress"
    t.string "role", default: "driver"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "machine_rapports", "machines"
  add_foreign_key "machine_rapports", "users"
end
