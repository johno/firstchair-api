class SnotelStationsController < ApplicationController
  # GET /snotel_stations
  # GET /snotel_stations.json
  def index
    @snotel_stations = SnotelStation.all

    render json: { snotel_stations: @snotel_stations }
  end

  # GET /snotel_stations/1
  # GET /snotel_stations/1.json
  def show
    @snotel_station = SnotelStation.find(params[:id])
    @snotel_station.update_weather

    render json: { snotel_station: @snotel_station.as_json(include_snowfall_data: true) }
  end

  def daily_snowfall
    @daily_snowfall_readings = SnotelStation.find(params[:id]).daily_snowfall_readings.order('date DESC').limit(30)

    render json: { daily_snowfall_readings: @daily_snowfall_readings }
  end

  def hourly_snowfall
    @hourly_snowfall_readings = SnotelStation.find(params[:id]).hourly_snowfall_readings.order('date DESC').limit(72)

    render json: { hourly_snowfall_readings: @hourly_snowfall_readings }
  end
end
