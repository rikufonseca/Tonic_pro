class AddDefaultStatusToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :status, false
  end
end
