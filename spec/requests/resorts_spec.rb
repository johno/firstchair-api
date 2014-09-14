require 'rails_helper'

RSpec.describe "Resorts", :type => :request do
  describe "GET /resorts" do
    it "works! (now write some real specs)" do
      get resorts_path
      expect(response).to have_http_status(200)
    end
  end
end
