class CreateOffenceTypes < ActiveRecord::Migration
  def change
    create_table :offence_types do |t|
      t.integer :points
      t.integer :fine_from
      t.integer :fine_to
      t.string :descr

      t.timestamps
    end
  end
end
