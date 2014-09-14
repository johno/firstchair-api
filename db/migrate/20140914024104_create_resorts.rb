class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :token
      t.string :state
      t.string :latitude
      t.string :longitude
      t.integer :base_depth

      t.timestamps
    end
  end
end
