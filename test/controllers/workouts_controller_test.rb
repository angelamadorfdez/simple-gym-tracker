require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout = workouts(:one)
  end

  test "should get index" do
    get workouts_path
    assert_response :success
  end

  test "should get new" do
    get new_workout_path
    assert_response :success
  end

  test "should create workout" do
    assert_difference("Workout.count") do
      post workouts_path, params: { workout: { dead_lift_reps: @workout.dead_lift_reps, dead_lift_series: @workout.dead_lift_series, dead_lift_weight: @workout.dead_lift_weight, h_pull_reps: @workout.h_pull_reps, h_pull_series: @workout.h_pull_series, h_pull_weight: @workout.h_pull_weight, h_push_reps: @workout.h_push_reps, h_push_series: @workout.h_push_series, h_push_weight: @workout.h_push_weight, squat_reps: @workout.squat_reps, squat_series: @workout.squat_series, squat_weight: @workout.squat_weight, v_pull_reps: @workout.v_pull_reps, v_pull_series: @workout.v_pull_series, v_pull_weight: @workout.v_pull_weight, v_push_reps: @workout.v_push_reps, v_push_series: @workout.v_push_series, v_push_weight: @workout.v_push_weight, day: @workout.day } }
    end

    assert_redirected_to workouts_path
  end

  test "should show workout" do
    get workout_path(@workout)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_path(@workout)
    assert_response :success
  end

  test "should update workout" do
    patch workout_path(@workout), params: { workout: { dead_lift_reps: @workout.dead_lift_reps, dead_lift_series: @workout.dead_lift_series, dead_lift_weight: @workout.dead_lift_weight, h_pull_reps: @workout.h_pull_reps, h_pull_series: @workout.h_pull_series, h_pull_weight: @workout.h_pull_weight, h_push_reps: @workout.h_push_reps, h_push_series: @workout.h_push_series, h_push_weight: @workout.h_push_weight, squat_reps: @workout.squat_reps, squat_series: @workout.squat_series, squat_weight: @workout.squat_weight, v_pull_reps: @workout.v_pull_reps, v_pull_series: @workout.v_pull_series, v_pull_weight: @workout.v_pull_weight, v_push_reps: @workout.v_push_reps, v_push_series: @workout.v_push_series, v_push_weight: @workout.v_push_weight, day: @workout.day } }
    assert_redirected_to workouts_path
  end

  test "should destroy workout" do
    assert_difference("Workout.count", -1) do
      delete workout_path(@workout)
    end

    assert_redirected_to workouts_path
  end
end
