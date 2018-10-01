class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :location, :description, :museId, :twitter, :image_link, :image_link2, :image_mini, :company_logo, :industry
end
