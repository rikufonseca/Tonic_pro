class ChangeSubCathegoryToSubCategory < ActiveRecord::Migration[7.0]
  def change
    rename_table :sub_cathegories, :sub_categories
  end
end
