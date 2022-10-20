class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :price
      t.boolean :status
      t.text :description
      t.integer :required_number
      t.integer :percentage
      t.references :sub_cathegory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
