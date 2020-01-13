class Category < ApplicationRecord
  has_many :posts
  validates :name, format: { with:f, message: "only allows letters" }
end
