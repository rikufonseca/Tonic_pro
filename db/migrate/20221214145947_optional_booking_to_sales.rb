class OptionalBookingToSales < ActiveRecord::Migration[7.0]
  def change
    remove_reference :sales, :booking, index: true
    remove_reference :bookings, :sub_category, index: true
    add_reference :sales, :booking, index: true, optional: true
  end
end
