class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :surname
      t.date :birth
      t.string :place
      t.date :valid_from
      t.date :valid_to
      t.string :national_id
      t.string :address

      t.timestamps
    end
  end
end
