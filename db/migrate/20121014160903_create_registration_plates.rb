class CreateRegistrationPlates < ActiveRecord::Migration
  def change
    create_table :registration_plates do |t|
      t.string :reg
      t.date :valid_from
      t.date :valid_to

      t.timestamps
    end
  end
end
