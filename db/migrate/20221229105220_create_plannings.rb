class CreatePlannings < ActiveRecord::Migration[7.0]
  def change
    create_table :plannings do |t|
      t.integer :week
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
