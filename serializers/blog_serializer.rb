class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :post_ids
end
