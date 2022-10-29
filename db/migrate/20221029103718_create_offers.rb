class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.text :description
      t.boolean :status
      t.references :sub_category, null: false, foreign_key: true
      t.integer :required_number
      t.integer :percentage

      t.timestamps
    end
  end
end
