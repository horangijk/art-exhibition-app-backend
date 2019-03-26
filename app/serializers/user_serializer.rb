class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :occupation, :email, :home_neighborhood
end
