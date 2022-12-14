class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :client, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true, optional: true
      t.integer :amount
      t.string :product

      t.timestamps
    end
  end
end
