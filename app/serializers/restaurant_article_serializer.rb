class RestaurantArticleSerializer < ArticleSerializer
  attributes :selling_price

  belongs_to :restaurant

  def name
    object.article.name
  end
end
