module Weatherable
  extend ActiveSupport::Concern

  included do
    after_create :create_weather
    has_one :weather, as: :weatherable
  end

  def update_weather
    forecast = ForecastIO.forecast(latitude.to_f, longitude.to_f)
    currently = forecast.currently

    weather.temperature            = currently.temperature
    weather.summary                = currently.summary
    weather.weather                = currently.icon
    weather.wind                   = currently.windSpeed
    weather.humidity               = currently.humidity
    weather.visibility             = currently.visibility
    weather.cloud_cover            = currently.cloudCover
    weather.pressure               = currently.pressure
    weather.ozone                  = currently.ozone
    weather.precip_intensity       = currently.precipIntensity
    weather.precip_probability     = currently.precipProbability
    weather.nearest_storm_distance = currently.nearestStormDistance

    weather.save
  end
end