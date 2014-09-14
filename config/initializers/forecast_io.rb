ForecastIO.configure do |configuration|
  puts 'setting key'
  configuration.api_key = ENV['FORECAST_IO_API_KEY']
end
