class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :color
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
