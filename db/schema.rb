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

ActiveRecord::Schema[7.0].define(version: 2022_05_02_111637) do
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
  end

end
