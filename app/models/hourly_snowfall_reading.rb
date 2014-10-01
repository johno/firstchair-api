class HourlySnowfallReading < ActiveRecord::Base
  belongs_to :hourly_snowfall_trackable, polymorphic: true
  validates_presence_of :hourly_snowfall_trackable, :date, :snow_water_equivalent_in, :snow_depth_in
end
