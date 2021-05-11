class User < ApplicationRecord
    #has_secure_password
    
    has_many :score_cards
    has_many :golf_courses, :through => :score_cards
    
   

    validates :name, presence: true
    validates :username, presence: true, length: {minimum:5, maximum:15}, uniqueness: true


end
