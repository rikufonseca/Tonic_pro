class RemoveTimeFromSubCathegory < ActiveRecord::Migration[7.0]
  def change
    remove_column :sub_cathegories, :time
  end
end
