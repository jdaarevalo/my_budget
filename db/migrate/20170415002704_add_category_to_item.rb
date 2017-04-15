class AddCategoryToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :category_id, :integer, :references => :categories
  end
end
