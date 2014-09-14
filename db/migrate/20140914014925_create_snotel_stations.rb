class CreateSnotelStations < ActiveRecord::Migration
  def change
    create_table :snotel_stations do |t|
      t.string :elevation
      t.string :latitude
      t.string :longitude
      t.string :name
      t.string :token
      t.string :state
      t.string :weather
      t.string :temperature
      t.string :wind
      t.string :triplet

      t.timestamps
    end
  end
end
