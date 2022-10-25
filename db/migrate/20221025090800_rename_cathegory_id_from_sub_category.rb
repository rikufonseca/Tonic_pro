class RenameCathegoryIdFromSubCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :sub_categories, :cathegory_id, :category_id
  end
end
