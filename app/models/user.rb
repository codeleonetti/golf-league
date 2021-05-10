class User < ApplicationRecord


    validates :name, presence: true
    validates :username, presence: true, legnth: {minimum:5, maximum:15}, uniqueness: true
end
