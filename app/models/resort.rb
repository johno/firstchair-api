class Resort < ActiveRecord::Base
  include Weatherable

  def self.update_weather!(resort_id)
    resort = Resort.find(resort_id)
    resort.update_weather
  end
end
