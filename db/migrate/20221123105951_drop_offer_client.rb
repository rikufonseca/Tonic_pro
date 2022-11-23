class DropOfferClient < ActiveRecord::Migration[7.0]
  def change
    drop_table :offer_clients
  end
end
