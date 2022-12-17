class RenameStartAtToBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :start_at, :start_time
  end
end
