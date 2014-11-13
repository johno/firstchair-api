class ResortsController < ApplicationController
  # GET /resorts
  # GET /resorts.json
  def index
    @resorts = Resort.all

    render json: { resorts: @resorts }
  end

  # GET /resorts/1
  # GET /resorts/1.json
  def show
    @resort = Resort.find(params[:id])
    @resort.update_weather

    render json: { resort: @resort }
  end
end
