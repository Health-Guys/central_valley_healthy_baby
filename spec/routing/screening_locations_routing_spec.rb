require "rails_helper"

RSpec.describe ScreeningLocationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/screening_locations").to route_to("screening_locations#index")
    end

    it "routes to #new" do
      expect(:get => "/screening_locations/new").to route_to("screening_locations#new")
    end

    it "routes to #show" do
      expect(:get => "/screening_locations/1").to route_to("screening_locations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/screening_locations/1/edit").to route_to("screening_locations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/screening_locations").to route_to("screening_locations#create")
    end

    it "routes to #update" do
      expect(:put => "/screening_locations/1").to route_to("screening_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/screening_locations/1").to route_to("screening_locations#destroy", :id => "1")
    end

  end
end
