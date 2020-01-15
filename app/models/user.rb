class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  has_many :comments
  has_many :posts
end
