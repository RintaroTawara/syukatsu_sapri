class AddUserIdToArticles < ActiveRecord::Migration[5.1]
  def up
    execute 'DELETE FROM articles;'
    add_reference :articles, :user, index: true
  end
  
  def down
    remove_reference :articles, :user, index: true
  end
end
