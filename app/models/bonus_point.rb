class BonusPoint < ActiveRecord::Base
  attr_accessible :driver_id, :note, :points, :when

  belongs_to :driver

  validates_presence_of :driver_id
  validates_presence_of :points
  validates_presence_of :when

end
