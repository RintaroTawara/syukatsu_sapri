class AddIndexToLikesArticleId < ActiveRecord::Migration[5.1]
  def change
    add_index :likes, :article_id, :unique => true
  end
end
