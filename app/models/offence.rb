class Offence < ActiveRecord::Base
  attr_accessible :descr, :driver_id, :fine, :offence_type_id, :when, :where

  belongs_to :driver
  belongs_to :offence_type

  validates_presence_of :fine
  validates_presence_of :when
  validates_presence_of :driver_id
  validates_presence_of :offence_type_id

  # todo validate fine in type fine interval
  validate :valid_fine

protected
  def valid_fine
    self.fine ||= 0
    errors[:base]  << 'Fine too high' if self.fine > self.offence_type.fine_to
    errors[:base]  << 'Fine too low' if self.fine < self.offence_type.fine_from
  end

end
