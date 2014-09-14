class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :weatherable_id
      t.string :weatherable_type
      t.float :latitude
      t.float :longitude
      t.string :weather
      t.string :summary
      t.float :temperature
      t.float :wind
      t.float :visibility
      t.float :humidity
      t.integer :nearest_storm_distance
      t.float :cloud_cover
      t.float :pressure
      t.float :ozone
      t.float :precip_intensity
      t.float :precip_probability

      t.timestamps
    end
  end
end
