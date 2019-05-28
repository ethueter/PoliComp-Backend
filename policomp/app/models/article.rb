class Article < ApplicationRecord
  has_one :source
  has_many :users_articles
  has_many :users, through: :users_articles
end
