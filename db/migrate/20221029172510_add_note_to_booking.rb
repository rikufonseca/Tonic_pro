class AddNoteToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :note, :text
  end
end
