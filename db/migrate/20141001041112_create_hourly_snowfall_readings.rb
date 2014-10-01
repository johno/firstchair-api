class CreateHourlySnowfallReadings < ActiveRecord::Migration
  def change
    create_table :hourly_snowfall_readings do |t|
      t.datetime :date
      t.float :snow_water_equivalent_in
      t.float :change_in_snow_water_equivalent_in
      t.float :snow_depth_in
      t.float :change_in_snow_depth_in
      t.integer :hourly_snowfall_trackable_id
      t.string :hourly_snowfall_trackable_type

      t.timestamps
    end
  end
end
