class ChangecathegoryToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_table :cathegories, :categories
  end
end
