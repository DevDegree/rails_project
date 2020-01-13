class Tag < ApplicationRecord
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  has_many :taggings
  has_many :posts, through: :taggings
end
