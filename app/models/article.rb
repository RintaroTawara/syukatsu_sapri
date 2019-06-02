class Article < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :user
  
  attachment :image
end
