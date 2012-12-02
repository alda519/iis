class CreateLicenceGroups < ActiveRecord::Migration
  def change
    create_table :licence_groups do |t|
      t.integer :driver_id
      t.date :valid_from
      t.date :valid_to
      t.string :group

      t.timestamps
    end
  end
end
