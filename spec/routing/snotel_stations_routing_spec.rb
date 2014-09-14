require "rails_helper"

RSpec.describe SnotelStationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/snotel_stations").to route_to("snotel_stations#index")
    end

    it "routes to #new" do
      expect(:get => "/snotel_stations/new").to route_to("snotel_stations#new")
    end

    it "routes to #show" do
      expect(:get => "/snotel_stations/1").to route_to("snotel_stations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/snotel_stations/1/edit").to route_to("snotel_stations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/snotel_stations").to route_to("snotel_stations#create")
    end

    it "routes to #update" do
      expect(:put => "/snotel_stations/1").to route_to("snotel_stations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/snotel_stations/1").to route_to("snotel_stations#destroy", :id => "1")
    end

  end
end
