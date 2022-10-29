class CreateComboOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :combo_offers do |t|
      t.string :name
      t.boolean :status
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
