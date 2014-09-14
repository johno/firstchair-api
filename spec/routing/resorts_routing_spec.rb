require "rails_helper"

RSpec.describe ResortsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resorts").to route_to("resorts#index")
    end

    it "routes to #new" do
      expect(:get => "/resorts/new").to route_to("resorts#new")
    end

    it "routes to #show" do
      expect(:get => "/resorts/1").to route_to("resorts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resorts/1/edit").to route_to("resorts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resorts").to route_to("resorts#create")
    end

    it "routes to #update" do
      expect(:put => "/resorts/1").to route_to("resorts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resorts/1").to route_to("resorts#destroy", :id => "1")
    end

  end
end
