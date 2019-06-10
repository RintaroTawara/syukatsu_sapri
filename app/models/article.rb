class Article < ApplicationRecord
  
  def self.search(search)
    if search
      Article.where(['title LIKE ?', "%#{search}%"])
    else
      Article.all
    end
  end
  
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  
  belongs_to :user
  attachment :image
  
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
  
  def iine(user)
    likes.create(user_id: user.id)
  end
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end
  
end
