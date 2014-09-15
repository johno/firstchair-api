RSpec.describe SnotelStationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/snotel_stations").to route_to("snotel_stations#index")
    end

    it "routes to #show" do
      expect(get: "/snotel_stations/1").to route_to("snotel_stations#show", id: "1")
    end
  end
end
