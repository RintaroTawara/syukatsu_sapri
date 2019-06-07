class DeleteUniqueTrueFromLikes < ActiveRecord::Migration[5.1]
  def change
    remove_index :likes, :article_id
  end
end
