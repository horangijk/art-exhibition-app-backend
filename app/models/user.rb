class User < ApplicationRecord
  has_many :saved_exhibitions
  has_many :exhibitions, through: :saved_exhibitions
end
