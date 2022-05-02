class AddDayToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :day, :date
  end
end
