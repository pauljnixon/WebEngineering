class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :focus_area
      t.string :minutes_or_reps
      t.string :calorie_formula
      t.string :exercise_type
      t.text :description
      t.string :image_url
      t.string :difficulty_level

      t.timestamps
    end
  end
end
