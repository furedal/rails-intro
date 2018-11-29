class RestaurantSerializer < ActiveModel::Serializer
  attributes :name

  has_many :suppliers
  has_many :articles

  def suppliers
    object.supplier_restaurants
  end

  def articles
    object.restaurant_articles
  end
end
