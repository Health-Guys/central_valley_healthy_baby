json.array!(@screening_locations) do |screening_location|
  json.extract! screening_location, :id, :disease, :street, :name, :phone, :zipcode, :longitude, :latitude, :state
  json.url screening_location_url(screening_location, format: :json)
end
