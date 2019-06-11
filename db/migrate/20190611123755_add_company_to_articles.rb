class AddCompanyToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :company, :string
  end
end
