class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :blog_id
end
