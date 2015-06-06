class Prevalance < ActiveRecord::Base
  belongs_to :disease
  
  def to_s
    "#{id} - #{name}"
  end
  
  def disease
    super || NullableObject.new
  end
end
