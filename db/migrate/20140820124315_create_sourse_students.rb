class CreateSourseStudents < ActiveRecord::Migration
  def change
    create_table :sourse_students do |t|
      t.integer :course_id
      t.integer :student_id
      t.date :register_at

      t.timestamps
    end
  end
end
