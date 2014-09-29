module Snowfall
  extend ActiveSupport::Concern

  included do
    has_many :daily_snowfall_readings, as: :daily_snowfall_trackable
  end

  def update_snowfall(days = 1)
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
end
