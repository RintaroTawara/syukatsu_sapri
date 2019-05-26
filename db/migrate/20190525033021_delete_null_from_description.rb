class DeleteNullFromDescription < ActiveRecord::Migration[5.1]
  def up
    change_column_null :articles, :description, null: true
  end
  
  def down
    change_column_null :articles, :description, null: false
  end
end
