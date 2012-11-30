class Driver < ActiveRecord::Base
  attr_accessible :address, :birth, :name, :national_id, :place, :surname, :valid_from, :valid_to

  has_many :registration_plates
  has_many :vehicles, :through => :registration_plates

  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :national_id

end
