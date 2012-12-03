class Insurance < ActiveRecord::Base
  attr_accessible :descr, :from, :note, :to, :type, :vehicle_id

  belongs_to :vehicle

  validates_presence_of :vehicle_id

end
