class AddNailsFidelityToClient < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :nails_fidelity, :integer, default: 0
    add_column :clients, :jewellery, :integer, default: 0
  end
end
