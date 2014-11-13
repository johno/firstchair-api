class SnotelStation < ActiveRecord::Base
  include Weatherable
  include Snowfall

  def as_json(options = {})
    blob = super.merge(
      weather_id: weather.id
    )

    if options[:include_snowfall_data]
      blob.merge!(
        last_7_days_snowfall_in: DailySnowfallReading.where(daily_snowfall_trackable: self).limit(7).order('date DESC').map(&:snow_depth_in).reduce(:+),
        last_24_hours_snowfall_in: HourlySnowfallReading.where(hourly_snowfall_trackable: self).limit(1).order('date DESC').map(&:snow_depth_in).reduce(:+)
      )
    end

    blob
  end

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
