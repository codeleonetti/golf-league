class GolfCourse < ApplicationRecord
    has_many :score_cards
    has_many :users, :through => :score_cards

    


  

end
