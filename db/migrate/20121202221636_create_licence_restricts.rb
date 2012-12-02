class CreateLicenceRestricts < ActiveRecord::Migration
  def change
    create_table :licence_restricts do |t|
      t.date :from
      t.date :to
      t.string :descr
      t.integer :driver_id

      t.timestamps
    end
  end
end
