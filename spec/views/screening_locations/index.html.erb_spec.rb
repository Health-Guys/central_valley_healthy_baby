require 'rails_helper'

RSpec.describe "screening_locations/index", type: :view do
  before(:each) do
    assign(:screening_locations, [
      ScreeningLocation.create!(
        :disease => "",
        :street => "Street",
        :name => "Name",
        :phone => "Phone",
        :zipcode => "Zipcode",
        :longitude => "9.99",
        :latitude => "9.99",
        :state => "State"
      ),
      ScreeningLocation.create!(
        :disease => "",
        :street => "Street",
        :name => "Name",
        :phone => "Phone",
        :zipcode => "Zipcode",
        :longitude => "9.99",
        :latitude => "9.99",
        :state => "State"
      )
    ])
  end

  it "renders a list of screening_locations" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
