require 'rails_helper'

RSpec.describe "SnotelStations", :type => :request do
  describe "GET /snotel_stations" do
    it "works! (now write some real specs)" do
      get snotel_stations_path
      expect(response).to have_http_status(200)
    end
  end
end
