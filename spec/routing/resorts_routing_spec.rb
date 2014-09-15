RSpec.describe ResortsController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(get: "/resorts").to route_to("resorts#index")
    end

    it "routes to #show" do
      expect(get: "/resorts/1").to route_to("resorts#show", id: "1")
    end
  end
end
