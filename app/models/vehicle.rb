class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :model, :year, :vin

  has_many :registration_plates
  has_many :drivers, :through => :registration_plates
  has_many :thefts

  validates_presence_of :vin, :message => "code can't be blank"
  validates_presence_of :brand
  validates_presence_of :model
  validates_presence_of :year

  validates_uniqueness_of :vin

  def fullname
    "#{brand} #{model} (#{vin})"
  end

end
