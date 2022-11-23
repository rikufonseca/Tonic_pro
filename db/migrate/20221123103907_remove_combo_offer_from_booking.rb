class RemoveComboOfferFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :combo_offer, index: true
  end
end
