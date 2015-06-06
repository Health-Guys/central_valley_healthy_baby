class Disease < ActiveRecord::Base
  has_many :screening_locations
  has_one :prevalance
end
