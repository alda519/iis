class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :model, :year

  has_many :registration_plates
end
