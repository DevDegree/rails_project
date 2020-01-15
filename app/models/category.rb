class Category < ApplicationRecord
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  has_many :posts
end
