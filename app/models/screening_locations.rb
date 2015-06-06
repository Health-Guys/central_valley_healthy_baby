class ScreeningLocations < ActiveRecord::Base
  belongs_to :disease
  validates_formatting_of :phone, using: :us_phone
end
