class Exhibition < ApplicationRecord
  has_many :saved_exhibitions
  has_many :users, through: :saved_exhibitions
end
