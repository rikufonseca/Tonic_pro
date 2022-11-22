class RemoveCategoryIdFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :category, index: true
  end
end
