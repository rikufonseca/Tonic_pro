class CreateOfferClients < ActiveRecord::Migration[7.0]
  def change
    create_table :offer_clients do |t|
      t.references :client, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
