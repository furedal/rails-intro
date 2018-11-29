class RestaurantArticle < ApplicationRecord
  belongs_to :restaurant
  belongs_to :article
end
