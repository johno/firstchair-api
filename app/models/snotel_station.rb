class SnotelStation < ActiveRecord::Base
  include Weatherable

  def self.update_weather!(snotel_station_id)
    snotel_station = SnotelStation.find(snotel_station_id)
    snotel_station.update_weather
  end
end
