class JobsSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :type, :description, :link, :how_to_apply, :company, :company_url, :company_logo
end
