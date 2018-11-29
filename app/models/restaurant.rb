class Restaurant < ApplicationRecord
  has_many :supplier_restaurants
  has_many :restaurant_articles
end
