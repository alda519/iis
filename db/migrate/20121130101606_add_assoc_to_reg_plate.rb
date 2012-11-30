class AddAssocToRegPlate < ActiveRecord::Migration
  def change
    add_column :registration_plates, :driver_id, :integer
    add_column :registration_plates, :vehicle_id, :integer
  end
end
