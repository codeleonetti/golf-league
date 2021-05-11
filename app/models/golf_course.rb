class GolfCourse < ApplicationRecord
    has_many :score_cards
    has_many :users, :through => :score_cards

    #validates: :name, presence: true #uniqueness: true
   # validates: :address, :phone_number, presence: true


  

end
