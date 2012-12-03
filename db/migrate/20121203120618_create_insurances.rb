class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.date :from
      t.date :to
      t.string :note
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
