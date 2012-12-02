class LicenceRestrict < ActiveRecord::Base
  attr_accessible :descr, :driver_id, :from, :to

  belongs_to :driver

  validates_presence_of :driver_id
  validates_presence_of :from
  
end
