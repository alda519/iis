class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :model, :year

  has_many :registration_plates
  has_many :drivers, :through => :registration_plates

  validates_presence_of :brand
  validates_presence_of :model
  validates_presence_of :year

end
