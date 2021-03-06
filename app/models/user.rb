class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  # validates :password_digest, presence: true
  validates :home_neighborhood, presence: true

  has_many :saved_exhibitions
  has_many :exhibitions, through: :saved_exhibitions
  has_many :impressions
  has_many :exhibitions, through: :impressions
end
