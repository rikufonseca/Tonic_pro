class RenameCathegoryIdFromBooking < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :cathegory_id, :category_id
  end
end
