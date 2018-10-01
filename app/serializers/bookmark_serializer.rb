class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :title, :source_name, :summary, :url
end
