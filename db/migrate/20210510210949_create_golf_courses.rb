class CreateGolfCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :golf_courses do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
