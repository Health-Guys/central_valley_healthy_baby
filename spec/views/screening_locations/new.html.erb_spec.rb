require 'rails_helper'

RSpec.describe "screening_locations/new", type: :view do
  before(:each) do
    assign(:screening_location, ScreeningLocation.new(
      :disease => "",
      :street => "MyString",
      :name => "MyString",
      :phone => "MyString",
      :zipcode => "MyString",
      :longitude => "9.99",
      :latitude => "9.99",
      :state => "MyString"
    ))
  end

  it "renders new screening_location form" do
    render

    assert_select "form[action=?][method=?]", screening_locations_path, "post" do

      assert_select "input#screening_location_disease[name=?]", "screening_location[disease]"

      assert_select "input#screening_location_street[name=?]", "screening_location[street]"

      assert_select "input#screening_location_name[name=?]", "screening_location[name]"

      assert_select "input#screening_location_phone[name=?]", "screening_location[phone]"

      assert_select "input#screening_location_zipcode[name=?]", "screening_location[zipcode]"

      assert_select "input#screening_location_longitude[name=?]", "screening_location[longitude]"

      assert_select "input#screening_location_latitude[name=?]", "screening_location[latitude]"

      assert_select "input#screening_location_state[name=?]", "screening_location[state]"
    end
  end
end
