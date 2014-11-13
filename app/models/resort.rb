class Resort < ActiveRecord::Base
  include Weatherable

  def self.update_all_weather
    Resort.find_each(batch_size: 100) do |snotel_station|
      snotel_station.update_weather
    end
  end
end
