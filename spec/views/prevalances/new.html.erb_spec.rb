require 'rails_helper'

RSpec.describe "prevalances/new", type: :view do
  before(:each) do
    assign(:prevalance, Prevalance.new(
      :case_count => "MyString",
      :disease => "",
      :screened => 1.5,
      :california_region => "MyString",
      :disorder_percent => "9.99"
    ))
  end

  it "renders new prevalance form" do
    render

    assert_select "form[action=?][method=?]", prevalances_path, "post" do

      assert_select "input#prevalance_case_count[name=?]", "prevalance[case_count]"

      assert_select "input#prevalance_disease[name=?]", "prevalance[disease]"

      assert_select "input#prevalance_screened[name=?]", "prevalance[screened]"

      assert_select "input#prevalance_california_region[name=?]", "prevalance[california_region]"

      assert_select "input#prevalance_disorder_percent[name=?]", "prevalance[disorder_percent]"
    end
  end
end
