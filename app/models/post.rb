class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings

  validates :title, length: { maximum: 255 }
  validates :content, presence: true
end
