class DropTableComboOffer < ActiveRecord::Migration[7.0]
  def change
    drop_table :combo_offers
  end
end
