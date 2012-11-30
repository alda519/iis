class OffenceType < ActiveRecord::Base
  attr_accessible :descr, :fine_from, :fine_to, :points

  validates_presence_of :points
  validates_presence_of :fine_from
  validates_presence_of :fine_to

  validate :from_lesser_to

protected
  def from_lesser_to
    self.fine_to ||= 0
    self.fine_from ||= 0
    errors[:base]  << 'Fine from have to be lesser than or equal to fine to' if self.fine_from > self.fine_to
  end

end
