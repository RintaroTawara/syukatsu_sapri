class DeleteUniqueTrueInUserIdFromLikes < ActiveRecord::Migration[5.1]
  def change
    remove_index :likes, :user_id
  end
end
