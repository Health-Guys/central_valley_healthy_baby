class Disease < ActiveRecord::Base
  has_many :screening_locations
end
