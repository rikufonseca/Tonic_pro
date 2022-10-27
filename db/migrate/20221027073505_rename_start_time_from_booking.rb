class RenameStartTimeFromBooking < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :start_time, :start_at
  end
end
