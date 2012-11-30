class RegistrationPlate < ActiveRecord::Base
  attr_accessible :reg, :valid_from, :valid_to, :driver_id, :vehicle_id

  belongs_to :vehicle
  belongs_to :driver

  validates_presence_of :reg

end
