class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :muscles_worked, :string
  end
end
