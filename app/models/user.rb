class User < ApplicationRecord
  validates :email, email: true, uniqueness: true
  has_secure_password
end
