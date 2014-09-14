class SnotelStation < ActiveRecord::Base
  def self.update_weather!(snotel_station_id)
    snotel_station = SnotelStation.find(snotel_station_id)
    forecast = ForecastIO.forecast(snotel_station.latitude.to_f, snotel_station.longitude.to_f)

    currently = forecast.currently
    snotel_station.temperature            = currently.temperature
    snotel_station.summary                = currently.summary
    snotel_station.weather                = currently.icon
    snotel_station.wind                   = currently.windSpeed
    snotel_station.humidity               = currently.humidity
    snotel_station.visibility             = currently.visibility
    snotel_station.cloud_cover            = currently.cloudCover
    snotel_station.pressure               = currently.pressure
    snotel_station.ozone                  = currently.ozone
    snotel_station.precip_intensity       = currently.precipIntensity
    snotel_station.precip_probability     = currently.precipProbability
    snotel_station.nearest_storm_distance = currently.nearestStormDistance
    snotel_station.save
  end
end
