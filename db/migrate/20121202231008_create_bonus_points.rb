class CreateBonusPoints < ActiveRecord::Migration
  def change
    create_table :bonus_points do |t|
      t.integer :points
      t.date :when
      t.string :note
      t.integer :driver_id

      t.timestamps
    end
  end
end
