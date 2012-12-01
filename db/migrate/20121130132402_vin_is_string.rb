class VinIsString < ActiveRecord::Migration
    def change
        change_column :vehicles, :vin, :string
    end
end
