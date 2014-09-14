class AddMoreDataToSnotelStations < ActiveRecord::Migration
  def change
    add_column :snotel_stations, :summary, :string
    add_column :snotel_stations, :humidity, :float
    add_column :snotel_stations, :visibility, :float
    add_column :snotel_stations, :nearest_storm_distance, :integer
    add_column :snotel_stations, :cloud_cover, :float
    add_column :snotel_stations, :pressure, :float
    add_column :snotel_stations, :ozone, :float
    add_column :snotel_stations, :precip_intensity, :float
    add_column :snotel_stations, :precip_probability, :float
  end
end
