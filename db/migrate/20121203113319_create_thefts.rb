class CreateThefts < ActiveRecord::Migration
  def change
    create_table :thefts do |t|
      t.date :when
      t.string :where
      t.boolean :returned
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
