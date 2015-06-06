class Disease < ActiveRecord::Base
  has_many :screening_locations
  has_one :prevalance
  
  def to_s
    "#{id} - #{name}"
  end
end
