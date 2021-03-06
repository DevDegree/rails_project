class Category < ApplicationRecord
  has_many :posts
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
