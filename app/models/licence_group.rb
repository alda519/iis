class LicenceGroup < ActiveRecord::Base
  attr_accessible :driver_id, :valid_from, :valid_to, :group

  belongs_to :driver

  validates_presence_of :driver_id
  validates_presence_of :group
  validates_presence_of :valid_from

end
