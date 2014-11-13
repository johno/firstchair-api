class WeatherController < ApplicationController
  def show
    @weather = Weather.find(params[:id]) rescue nil

    if @weather
      render json: { weather: @weather }
    else
      render json: { error: 'That weather id does not exist.' }, status: :not_found
    end
  end

  def by_location
    if params[:latitude] && params[:longitude]
      set_forecast

      if @forecast
        render json: { weather: @forecast }
      else
        render json: {
          error: "We couldn't find that location. "\
                 "Please make sure your lat/long coordinates aren't mixed up."
        }, status: :not_found
      end
    else
      render json: { error: 'Missing latitude and/or longitude paramters' }, status: :unprocessable_entity
    end
  end

  private

    def set_forecast
      @forecast = ForecastIO.forecast(params[:latitude].to_f, params[:longitude].to_f)
    end
end
