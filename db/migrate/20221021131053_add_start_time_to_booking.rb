class AddStartTimeToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_time, :datetime
  end
end
