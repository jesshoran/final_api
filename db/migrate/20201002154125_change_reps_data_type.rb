class ChangeRepsDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :workouts, :reps, :string
  end
end
