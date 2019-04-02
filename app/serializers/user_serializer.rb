class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :occupation, :home_neighborhood
end
