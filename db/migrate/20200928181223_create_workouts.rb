class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :impact
      t.string :fitness_type
      t.string :focus
      t.string :img
      t.string :demo
      t.integer :reps

      t.timestamps`
    end
  end
end
