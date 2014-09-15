RSpec.describe "Weather", type: :request do

  let(:weather) { FactoryGirl.create(:weather) }

  describe "GET /weather/by_location" do

    context "without the required parameters" do

      it "should return a 422" do
        get by_location_weather_index_path
        expect(response).to have_http_status(422)
      end
    end

    context "with a nonexistent weather location" do

      it "should return a 404" do
        allow_any_instance_of(WeatherController).to receive(:set_forecast).and_return(nil)
        get by_location_weather_index_path(latitude: 1000, longitude: 1000)
        expect(response).to have_http_status(404)
      end
    end

    context "with a valid weather location" do

      it "should return a 200" do
        allow(ForecastIO).to receive(:forecast).and_return({ fake: :weather })
        get by_location_weather_index_path(latitude: 1000, longitude: 1000)
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET /weather/1" do

    context "when the object exists" do

      it "should return a 200" do
        get weather_path(weather)
        expect(response).to have_http_status(200)
      end
    end

    context "when the object doesn't exist" do

      it "should return a 404" do
        get weather_path(id: 1)
        expect(response).to have_http_status(404)
      end
    end
  end
end
