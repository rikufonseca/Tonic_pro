class AddTimeToComboOffer < ActiveRecord::Migration[7.0]
  def change
    add_column :combo_offers, :time, :integer
  end
end
