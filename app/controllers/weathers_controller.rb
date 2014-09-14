class WeathersController < ApplicationController
  # GET /weathers
  # GET /weathers.json
  def index
    @weathers = Weather.all

    render json: @weathers
  end

  # GET /weathers/1
  # GET /weathers/1.json
  def show
    @weather = Weather.find(params[:id])

    render json: @weather
  end

  # POST /weathers
  # POST /weathers.json
  def create
    @weather = Weather.new(params[:weather])

    if @weather.save
      render json: @weather, status: :created, location: @weather
    else
      render json: @weather.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weathers/1
  # PATCH/PUT /weathers/1.json
  def update
    @weather = Weather.find(params[:id])

    if @weather.update(params[:weather])
      head :no_content
    else
      render json: @weather.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weathers/1
  # DELETE /weathers/1.json
  def destroy
    @weather = Weather.find(params[:id])
    @weather.destroy

    head :no_content
  end
end
