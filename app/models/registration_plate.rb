class RegistrationPlate < ActiveRecord::Base
  attr_accessible :reg, :valid_from, :valid_to

  belongs_to :vehicle
  belongs_to :driver
end
