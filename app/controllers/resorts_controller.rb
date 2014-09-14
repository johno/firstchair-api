class ResortsController < ApplicationController
  # GET /resorts
  # GET /resorts.json
  def index
    @resorts = Resort.all

    render json: @resorts
  end

  # GET /resorts/1
  # GET /resorts/1.json
  def show
    @resort = Resort.find(params[:id])

    render json: @resort
  end

  # POST /resorts
  # POST /resorts.json
  def create
    @resort = Resort.new(params[:resort])

    if @resort.save
      render json: @resort, status: :created, location: @resort
    else
      render json: @resort.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resorts/1
  # PATCH/PUT /resorts/1.json
  def update
    @resort = Resort.find(params[:id])

    if @resort.update(params[:resort])
      head :no_content
    else
      render json: @resort.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resorts/1
  # DELETE /resorts/1.json
  def destroy
    @resort = Resort.find(params[:id])
    @resort.destroy

    head :no_content
  end
end
