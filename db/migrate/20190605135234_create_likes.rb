class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :article_id

      t.timestamps
    end
  end
end
