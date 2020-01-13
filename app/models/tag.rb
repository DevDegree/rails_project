class Tag < ApplicationRecord
  has_many :taggings
  has_many :posts, through: :taggings
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
