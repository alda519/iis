class Driver < ActiveRecord::Base
  attr_accessible :address, :birth, :name, :national_id, :place, :surname, :valid_from, :valid_to

  has_many :registration_plates
  has_many :vehicles, :through => :registration_plates
  has_many :offences
  has_many :licence_groups
  has_many :bonus_points

  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :national_id

  def fullname
    name + " " + surname
  end

  def points
    p = 0
    offences.each { |o| p += o.offence_type.points }
    bonus_points.each { |b| p -= b.points }
    p > 0 ? [p,12].min : 0
  end

end
