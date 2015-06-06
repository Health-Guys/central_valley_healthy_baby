require 'rails_helper'

RSpec.describe "prevalances/show", type: :view do
  before(:each) do
    @prevalance = assign(:prevalance, Prevalance.create!(
      :case_count => "Case Count",
      :disease => "",
      :screened => 1.5,
      :california_region => "California Region",
      :disorder_percent => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Case Count/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/California Region/)
    expect(rendered).to match(/9.99/)
  end
end
