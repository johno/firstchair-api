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

    render json: { snotel_station: @snotel_station }
  end
end
