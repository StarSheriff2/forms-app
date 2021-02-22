class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 10 }, uniqueness: true
  validates :email, presence: true, length: { minimum: 4 }, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
  validates :password, presence: true, length: { minimum: 4 }
end
