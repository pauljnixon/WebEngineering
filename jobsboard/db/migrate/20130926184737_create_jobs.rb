class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :location
      t.boolean :full_time
      t.boolean :active
      t.text :contact
      t.text :description
      t.text :requirements
      t.float :salary

      t.timestamps
    end
  end
end
