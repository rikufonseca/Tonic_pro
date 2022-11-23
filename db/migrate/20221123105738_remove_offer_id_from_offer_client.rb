class RemoveOfferIdFromOfferClient < ActiveRecord::Migration[7.0]
  def change
    remove_reference :offer_clients, :offer, index: true
  end
end
