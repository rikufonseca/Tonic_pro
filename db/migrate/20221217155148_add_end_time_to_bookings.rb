class AddEndTimeToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :total_time
    add_column :bookings, :end_time, :datetime
  end
end
