class AddIndexToLikesUserId < ActiveRecord::Migration[5.1]
  def change
    add_index :likes, :user_id, :unique => true
  end
end
