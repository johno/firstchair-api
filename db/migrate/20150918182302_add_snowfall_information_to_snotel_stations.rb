class AddSnowfallInformationToSnotelStations < ActiveRecord::Migration
  def change
    add_column :snotel_stations, :last_24_hours_snowfall_in, :integer
    add_column :snotel_stations, :last_7_days_snowfall_in, :integer
  end
end
