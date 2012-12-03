class Theft < ActiveRecord::Base
  attr_accessible :returned, :vehicle_id, :when, :where

  belongs_to :vehicle

  validates_presence_of :vehicle_id
  validates_presence_of :when

end
