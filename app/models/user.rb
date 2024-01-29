class User < ApplicationRecord
  validates :email, email: true, uniqueness: true
  has_secure_password
  has_many :orders
end
