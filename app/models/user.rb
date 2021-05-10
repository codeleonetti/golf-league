class User < ApplicationRecord
    has_many :score_cards
    has_many :golf_courses, :through => :score_cards
    
    has_secure_password

    validates :name, presence: true
    validates :username, presence: true, length: {minimum:5, maximum:15}, uniqueness: true
end
