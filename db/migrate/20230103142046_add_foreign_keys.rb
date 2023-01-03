class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :tonic, index: true
    add_reference :users, :tonic, index: true
  end
end
