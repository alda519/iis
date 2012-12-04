class ForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :bonus_points, :drivers, dependent: :delete
    add_foreign_key :insurances, :vehicles, dependent: :delete
    add_foreign_key :licence_restricts, :drivers, dependent: :delete
    add_foreign_key :offences, :drivers, dependent: :delete
    add_foreign_key :offences, :offence_types, dependent: :delete
    add_foreign_key :registration_plates, :drivers, dependent: :delete
    add_foreign_key :registration_plates, :vehicles, dependent: :delete
    add_foreign_key :thefts, :vehicles, dependent: :delete
  end
end
