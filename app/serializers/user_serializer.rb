class UserSerializer < ActiveModel::Serializer
  attributes :full_name, :email, :password_digest, :home_neighborhood
end
