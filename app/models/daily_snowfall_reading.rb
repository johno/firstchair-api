class DailySnowfallReading < ActiveRecord::Base
  belongs_to :daily_snowfall_trackable, polymorphic: true
  validates_presence_of :daily_snowfall_trackable, :date, :snow_water_equivalent_in, :snow_depth_in
end
