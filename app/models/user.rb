class User < ApplicationRecord
    
    
    has_secure_password

    validates :name, presence: true
    validates :username, presence: true, legnth: {minimum:5, maximum:15}, uniqueness: true
end
