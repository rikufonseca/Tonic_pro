class AddTimeToSubCathegory < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_cathegories, :time, :integer
  end
end
