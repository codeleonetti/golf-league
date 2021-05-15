class CreateTeetimes < ActiveRecord::Migration[6.1]
  def change
    create_table :teetimes do |t|
      t.integer :user_id
      t.integer :golf_course_id
      t.datetime :tee_time

      t.timestamps
    end
  end
end
