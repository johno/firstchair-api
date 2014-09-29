class SnotelStation < ActiveRecord::Base
  include Weatherable
  include Snowfall

  def self.update_weather!(snotel_station_id)
    snotel_station = SnotelStation.find(snotel_station_id)
    snotel_station.update_weather
  end

  def self.update_snowfall!(snotel_station_id)
    snotel_station = SnotelStation.find(snotel_station_id)
    snotel_station.update_snowfall
  end
end
