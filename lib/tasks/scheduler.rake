desc "Update each snotel station's weather"
task update_snotel_station_weather: :environment do
  SnotelStation.delay.update_all_weather
end

desc "Update each resort's weather"
task update_resort_weather: :environment do
  Resort.delay.update_all_weather
end

desc "Update snowfall data"
task update_snowfall_data: :environment do
  SnotelStation.delay.update_all_snowfall
end
