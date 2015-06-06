require 'rails_helper'

RSpec.describe "diseases/edit", type: :view do
  before(:each) do
    @disease = assign(:disease, Disease.create!(
      :description => "MyText",
      :name => "MyString",
      :link => "MyString",
      :early_signs => "MyText"
    ))
  end

  it "renders the edit disease form" do
    render

    assert_select "form[action=?][method=?]", disease_path(@disease), "post" do

      assert_select "textarea#disease_description[name=?]", "disease[description]"

      assert_select "input#disease_name[name=?]", "disease[name]"

      assert_select "input#disease_link[name=?]", "disease[link]"

      assert_select "textarea#disease_early_signs[name=?]", "disease[early_signs]"
    end
  end
end
