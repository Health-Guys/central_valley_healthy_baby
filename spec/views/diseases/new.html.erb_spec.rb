require 'rails_helper'

RSpec.describe "diseases/new", type: :view do
  before(:each) do
    assign(:disease, Disease.new(
      :description => "MyText",
      :name => "MyString",
      :link => "MyString",
      :early_signs => "MyText"
    ))
  end

  it "renders new disease form" do
    render

    assert_select "form[action=?][method=?]", diseases_path, "post" do

      assert_select "textarea#disease_description[name=?]", "disease[description]"

      assert_select "input#disease_name[name=?]", "disease[name]"

      assert_select "input#disease_link[name=?]", "disease[link]"

      assert_select "textarea#disease_early_signs[name=?]", "disease[early_signs]"
    end
  end
end
