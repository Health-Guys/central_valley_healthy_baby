class Disease < ActiveRecord::Base
  has_many :screening_locations
  has_many :prevalances
  
  def to_s
    "#{id} - #{name}"
  end
  
  def prevalances
    super || [NullableObject.new]
  end
  
  def screening_locations
    super || [NullableObject.new]
  end
end
