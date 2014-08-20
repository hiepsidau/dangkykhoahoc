class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.date :start_at_date
      t.date :finish_at_date
      t.string :coach

      t.timestamps
    end
  end
end
