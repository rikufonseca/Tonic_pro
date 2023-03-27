class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.references :tonic, null: false, foreign_key: true
      t.string :name
      t.string :opening
      t.string :closing

      t.timestamps
    end
  end
end
