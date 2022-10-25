class RenameSubCathegoryIdFromOffer < ActiveRecord::Migration[7.0]
  def change
    rename_column :offers, :sub_cathegory_id, :sub_category_id
  end
end
