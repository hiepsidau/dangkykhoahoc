class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email
      t.string :enscripted_password
      t.string :phone_number

      t.timestamps
    end
  end
end
