class AddScorcardToScoreCard < ActiveRecord::Migration[6.1]
  def change
    add_column :score_cards, :scorecard, :integer
  end
end
