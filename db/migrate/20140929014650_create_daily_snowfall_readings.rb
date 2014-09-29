class CreateDailySnowfallReadings < ActiveRecord::Migration
  def change
    create_table :daily_snowfall_readings do |t|
      t.datetime :date
      t.float :snow_water_equivalent_in
      t.float :change_in_snow_water_equivalent_in
      t.integer :snow_depth_in
      t.integer :change_in_snow_depth_in
      t.integer :daily_snowfall_trackable_id
      t.string :daily_snowfall_trackable_type

      t.timestamps
    end
  end
end
