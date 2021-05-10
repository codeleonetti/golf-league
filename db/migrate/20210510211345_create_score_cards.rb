class CreateScoreCards < ActiveRecord::Migration[6.1]
  def change
    create_table :score_cards do |t|
     t.integer :user_id
     t.integer :golf_course_id

      t.timestamps
    end
  end
end
