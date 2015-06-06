require 'rails_helper'

RSpec.describe "diseases/show", type: :view do
  before(:each) do
    @disease = assign(:disease, Disease.create!(
      :description => "MyText",
      :name => "Name",
      :link => "Link",
      :early_signs => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/MyText/)
  end
end
