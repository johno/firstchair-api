module Snowfall
  extend ActiveSupport::Concern

  included do
    has_many :daily_snowfall_readings, as: :daily_snowfall_trackable
    has_many :hourly_snowfall_readings, as: :hourly_snowfall_trackable
  end

  def update_snowfall(days = 1, options = {})
    update_daily_snowfall(days) unless options[:skip_daily]
    update_hourly_snowfall(days) unless options[:skip_hourly]
    puts "SNOWFALL: updated the last #{ days } for #{ name }"
  end

  def update_daily_snowfall(days)
    data = Snotel.daily(token.to_sym, days)
    return unless data and data.any?

    ActiveRecord::Base.transaction do
      data.each do |d|
        d[:date] = DateTime.strptime(d[:date], "%Y-%m-%d")
        reading = daily_snowfall_readings.find_or_initialize_by(date: d[:date])
        reading.daily_snowfall_trackable = self
        reading.update(d)
      end

      touch
    end
  end

  def update_hourly_snowfall(hours)
    data = Snotel.hourly(token.to_sym, hours)
    return unless data and data.any?

    ActiveRecord::Base.transaction do
      data.each do |d|
        d[:date] = DateTime.strptime(d[:date], "%Y-%m-%d %H")
        reading = hourly_snowfall_readings.find_or_initialize_by(date: d[:date])
        reading.hourly_snowfall_trackable = self
        reading.update(d)
      end

      touch
    end
  end
end
