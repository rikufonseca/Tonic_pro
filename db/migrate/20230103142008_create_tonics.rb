class CreateTonics < ActiveRecord::Migration[7.0]
  def change
    create_table :tonics do |t|
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
