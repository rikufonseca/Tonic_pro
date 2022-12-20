class AddDefaultToconfirmed < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :confirmed
    add_column :bookings, :confirmed, :boolean, default: false
  end
end
