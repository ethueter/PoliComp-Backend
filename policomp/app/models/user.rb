class User < ApplicationRecord
    has_secure_password
    has_many :user_stories
    has_many :articles, through: :user_stories
end
