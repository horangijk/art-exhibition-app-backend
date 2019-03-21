class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :home_neighborhood
end
