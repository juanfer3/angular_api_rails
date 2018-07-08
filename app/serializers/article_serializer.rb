class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :cant, :updated_at
end
