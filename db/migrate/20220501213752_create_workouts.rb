class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.integer :v_pull_weight
      t.integer :v_pull_reps
      t.integer :v_pull_series
      t.integer :v_push_weight
      t.integer :v_push_reps
      t.integer :v_push_series
      t.integer :h_pull_weight
      t.integer :h_pull_reps
      t.integer :h_pull_series
      t.integer :h_push_weight
      t.integer :h_push_reps
      t.integer :h_push_series
      t.integer :squat_weight
      t.integer :squat_reps
      t.integer :squat_series
      t.integer :dead_lift_weight
      t.integer :dead_lift_reps
      t.integer :dead_lift_series

      t.timestamps
    end
  end
end
