class OverviewController < ApplicationController
  def index
    render json: {
      resources: {
        resorts: resorts_url(format: :json),
        snotel_stations: snotel_stations_url(format: :json)
      }
    }
  end
end
