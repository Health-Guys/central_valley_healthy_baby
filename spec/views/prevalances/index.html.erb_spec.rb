require 'rails_helper'

RSpec.describe "prevalances/index", type: :view do
  before(:each) do
    assign(:prevalances, [
      Prevalance.create!(
        :case_count => "Case Count",
        :disease => "",
        :screened => 1.5,
        :california_region => "California Region",
        :disorder_percent => "9.99"
      ),
      Prevalance.create!(
        :case_count => "Case Count",
        :disease => "",
        :screened => 1.5,
        :california_region => "California Region",
        :disorder_percent => "9.99"
      )
    ])
  end

  it "renders a list of prevalances" do
    render
    assert_select "tr>td", :text => "Case Count".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "California Region".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
