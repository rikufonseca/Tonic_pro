class CreateSubCathegories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_cathegories do |t|
      t.string :name
      t.time :time
      t.integer :price
      t.references :cathegory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
