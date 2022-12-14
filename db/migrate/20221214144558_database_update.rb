class DatabaseUpdate < ActiveRecord::Migration[7.0]
  def change
    # clients
    rename_column :clients, :jewellery, :jewellery_fidelity

    # users
    add_column :users, :admin, :boolean, default: false

    # bookings
    add_column :bookings, :total_price, :integer    
    add_column :bookings, :confirmed, :boolean  
    add_column :bookings, :total_time, :integer
  end
end
