RSpec.describe WeatherController, type: :routing do

  describe "routing" do

    it "routes to #show" do
      expect(get: "/weather/1").to route_to("weather#show", id: "1")
    end

    it "routes to #by_location" do
      expect(get: "/weather/by_location").to route_to("weather#by_location")
    end
  end
end
