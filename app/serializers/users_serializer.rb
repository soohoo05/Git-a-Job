class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :username, :email, :phone
end
