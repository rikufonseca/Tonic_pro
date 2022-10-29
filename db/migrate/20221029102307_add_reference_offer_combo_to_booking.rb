class AddReferenceOfferComboToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :combo_offer, index: true
  end
end
