class Article < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :user
  
  attachment :image
end
