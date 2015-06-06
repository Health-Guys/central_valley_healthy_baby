class ScreeningLocation < ActiveRecord::Base
  belongs_to :disease
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :zipcode, using: :us_zip
    geocoded_by :full_address
  after_validation :geocode, :if => \
  ->(obj) { obj.full_address.present? && obj.changed? }
  
  def full_address
     [street, city, state, 'US'].compact.join(', ')
  end
end
