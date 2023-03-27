class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :planning, null: false, foreign_key: true
      t.datetime :beginning
      t.datetime :ending

      t.timestamps
    end
  end
end
