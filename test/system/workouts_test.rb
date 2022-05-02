require "application_system_test_case"

class WorkoutsTest < ApplicationSystemTestCase
  setup do
    @workout = workouts(:one)
  end

  test "visiting the index" do
    visit workouts_url
    assert_selector "h1", text: "Workouts"
  end

  test "should create workout" do
    visit workouts_url
    click_on "New workout"

    fill_in "Dead lift reps", with: @workout.dead_lift_reps
    fill_in "Dead lift series", with: @workout.dead_lift_series
    fill_in "Dead lift weight", with: @workout.dead_lift_weight
    fill_in "H pull reps", with: @workout.h_pull_reps
    fill_in "H pull series", with: @workout.h_pull_series
    fill_in "H pull weight", with: @workout.h_pull_weight
    fill_in "H push reps", with: @workout.h_push_reps
    fill_in "H push series", with: @workout.h_push_series
    fill_in "H push weight", with: @workout.h_push_weight
    fill_in "Squat reps", with: @workout.squat_reps
    fill_in "Squat series", with: @workout.squat_series
    fill_in "Squat weight", with: @workout.squat_weight
    fill_in "V pull reps", with: @workout.v_pull_reps
    fill_in "V pull series", with: @workout.v_pull_series
    fill_in "V pull weight", with: @workout.v_pull_weight
    fill_in "V push reps", with: @workout.v_push_reps
    fill_in "V push series", with: @workout.v_push_series
    fill_in "V push weight", with: @workout.v_push_weight
    click_on "Create Workout"

    assert_text "Workout was successfully created"
    click_on "Back"
  end

  test "should update Workout" do
    visit workout_url(@workout)
    click_on "Edit this workout", match: :first

    fill_in "Dead lift reps", with: @workout.dead_lift_reps
    fill_in "Dead lift series", with: @workout.dead_lift_series
    fill_in "Dead lift weight", with: @workout.dead_lift_weight
    fill_in "H pull reps", with: @workout.h_pull_reps
    fill_in "H pull series", with: @workout.h_pull_series
    fill_in "H pull weight", with: @workout.h_pull_weight
    fill_in "H push reps", with: @workout.h_push_reps
    fill_in "H push series", with: @workout.h_push_series
    fill_in "H push weight", with: @workout.h_push_weight
    fill_in "Squat reps", with: @workout.squat_reps
    fill_in "Squat series", with: @workout.squat_series
    fill_in "Squat weight", with: @workout.squat_weight
    fill_in "V pull reps", with: @workout.v_pull_reps
    fill_in "V pull series", with: @workout.v_pull_series
    fill_in "V pull weight", with: @workout.v_pull_weight
    fill_in "V push reps", with: @workout.v_push_reps
    fill_in "V push series", with: @workout.v_push_series
    fill_in "V push weight", with: @workout.v_push_weight
    click_on "Update Workout"

    assert_text "Workout was successfully updated"
    click_on "Back"
  end

  test "should destroy Workout" do
    visit workout_url(@workout)
    click_on "Destroy this workout", match: :first

    assert_text "Workout was successfully destroyed"
  end
end
