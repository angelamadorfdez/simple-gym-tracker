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

ActiveRecord::Schema[7.0].define(version: 2022_05_02_162852) do
  create_table "users", force: :cascade do |t|
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

  create_table "workouts", force: :cascade do |t|
    t.integer "v_pull_weight"
    t.integer "v_pull_reps"
    t.integer "v_pull_series"
    t.integer "v_push_weight"
    t.integer "v_push_reps"
    t.integer "v_push_series"
    t.integer "h_pull_weight"
    t.integer "h_pull_reps"
    t.integer "h_pull_series"
    t.integer "h_push_weight"
    t.integer "h_push_reps"
    t.integer "h_push_series"
    t.integer "squat_weight"
    t.integer "squat_reps"
    t.integer "squat_series"
    t.integer "dead_lift_weight"
    t.integer "dead_lift_reps"
    t.integer "dead_lift_series"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "day"
    t.integer "user_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

end
