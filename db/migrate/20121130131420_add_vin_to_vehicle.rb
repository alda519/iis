class AddVinToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :vin, :integer
  end
end
