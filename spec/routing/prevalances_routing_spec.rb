require "rails_helper"

RSpec.describe PrevalancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prevalances").to route_to("prevalances#index")
    end

    it "routes to #new" do
      expect(:get => "/prevalances/new").to route_to("prevalances#new")
    end

    it "routes to #show" do
      expect(:get => "/prevalances/1").to route_to("prevalances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prevalances/1/edit").to route_to("prevalances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prevalances").to route_to("prevalances#create")
    end

    it "routes to #update" do
      expect(:put => "/prevalances/1").to route_to("prevalances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prevalances/1").to route_to("prevalances#destroy", :id => "1")
    end

  end
end
