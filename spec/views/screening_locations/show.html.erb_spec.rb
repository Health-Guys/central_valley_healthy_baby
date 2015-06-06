require 'rails_helper'

RSpec.describe "screening_locations/show", type: :view do
  before(:each) do
    @screening_location = assign(:screening_location, ScreeningLocation.create!(
      :disease => "",
      :street => "Street",
      :name => "Name",
      :phone => "Phone",
      :zipcode => "Zipcode",
      :longitude => "9.99",
      :latitude => "9.99",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/State/)
  end
end
