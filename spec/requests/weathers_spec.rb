require 'rails_helper'

RSpec.describe "Weathers", :type => :request do
  describe "GET /weathers" do
    it "works! (now write some real specs)" do
      get weathers_path
      expect(response).to have_http_status(200)
    end
  end
end
