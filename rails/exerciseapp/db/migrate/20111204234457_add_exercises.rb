class AddExercises < ActiveRecord::Migration
      def up
      	  Exercise.create(:title=>"Push-ups",:focus_area=>"arms",:minutes_or_reps=>"reps",:calorie_formula=>"3.3",:exercise_type=>"strength",:description=>"description goes here",:image_url=>"NULL",:difficulty_level=>"moderate")
	  Exercise.create(:title=>"Treadmill 6.0mph",:focus_area=>"legs",:minutes_or_reps=>"minutes",:calorie_formula=>"10",:exercise_type=>"cardio",:description=>"description goes here",:image_url=>"NULL",:difficulty_level=>"moderate")
      end

  def down
  end
end
