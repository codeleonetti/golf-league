class GolfCourse < ApplicationRecord
   
   has_many :teetimes
   has_many :users, through: :teetimes
   
   
   
   
   
    has_many :score_cards
    has_many :users, :through => :score_cards

    


  

end
