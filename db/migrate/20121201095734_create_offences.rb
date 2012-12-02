class CreateOffences < ActiveRecord::Migration
  def change
    create_table :offences do |t|
      t.datetime :when
      t.string :where
      t.integer :fine
      t.string :descr
      t.integer :offence_type_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
