class DropArticlesCategories < ActiveRecord::Migration[6.1]
  def change
    drop_table :articles_categories
    drop_table :categorie
  end
end
