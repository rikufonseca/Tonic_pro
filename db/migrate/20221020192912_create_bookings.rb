class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :time
      t.boolean :status
      t.references :client, null: false, foreign_key: true
      t.references :cathegory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
