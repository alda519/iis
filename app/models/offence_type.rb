class OffenceType < ActiveRecord::Base
  attr_accessible :descr, :fine_from, :fine_to, :points
end
