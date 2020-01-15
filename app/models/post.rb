class Post < ApplicationRecord
  validates :title, length: { maximum: 255 }
  validates :content, presence: true
  has_many :comments
  belongs_to :users
  belongs_to :categories
  has_many :tags, :through => :taggings
end
