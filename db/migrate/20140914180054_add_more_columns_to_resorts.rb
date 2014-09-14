class AddMoreColumnsToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :location, :string
    add_column :resorts, :vertical, :integer
    add_column :resorts, :elevation_top, :integer
    add_column :resorts, :elevation_base, :integer
    add_column :resorts, :skiable_area, :integer
    add_column :resorts, :runs, :integer
    add_column :resorts, :chairlifts, :integer
    add_column :resorts, :average_snowfall, :integer
    add_column :resorts, :night_skiing, :boolean
    add_column :resorts, :snowmaking, :boolean
    add_column :resorts, :website, :string
    add_column :resorts, :green_percentage, :integer
    add_column :resorts, :blue_percentage, :integer
    add_column :resorts, :black_percentage, :string
  end
end
