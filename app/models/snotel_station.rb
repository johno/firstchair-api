class SnotelStation < ActiveRecord::Base
  include Weatherable
  include Snowfall

  def self.update_all_weather
    SnotelStation.find_each(batch_size: 100) do |snotel_station|
      snotel_station.update_weather
    end
  end

  def self.update_all_snowfall
    SnotelStation.find_each(batch_size: 100) do |snotel_station|
      snotel_station.update_snowfall(10)
    end
  end
end
