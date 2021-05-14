class AddTeeTimeToScoreCard < ActiveRecord::Migration[6.1]
  def change
    add_column :score_cards, :tee_time, :datetime
  end
end
