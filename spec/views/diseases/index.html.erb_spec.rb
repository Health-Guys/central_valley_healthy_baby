require 'rails_helper'

RSpec.describe "diseases/index", type: :view do
  before(:each) do
    assign(:diseases, [
      Disease.create!(
        :description => "MyText",
        :name => "Name",
        :link => "Link",
        :early_signs => "MyText"
      ),
      Disease.create!(
        :description => "MyText",
        :name => "Name",
        :link => "Link",
        :early_signs => "MyText"
      )
    ])
  end

  it "renders a list of diseases" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
