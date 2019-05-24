class Article < ApplicationRecord
  has_one :source
  has_many :user_stories
  has_many :users, through: :user_stories
end
