class User < ApplicationRecord
    has_secure_password
    
    has_many :teetimes
    has_many :golf_courses, through: :teetimes


    
   

    validates :name, presence: true
    validates :password, presence: true, length: {minimum: 5}
    validates :username, presence: true, length: {minimum:3, maximum:15}, uniqueness: { case_sensitive: false}


end
