class Driver < ActiveRecord::Base
  attr_accessible :address, :birth, :name, :national_id, :place, :surname, :valid_from, :valid_to

  has_many :registration_plates
end
