desc "Update each snotel station's weather"
task update_snotel_station_weather: :environment do
  SnotelStation.find_each(batch_size: 100) do |snotel_station|
    SnotelStation.update_weather!(snotel_station.id)
  end
end

desc "Update each resort's weather"
task update_resort_weather: :environment do
  Resort.find_each(batch_size: 100) do |resort|
    Resort.update_weather!(resort.id)
  end
end

desc "Update snotel station data from snotel gem"
task update_snotel_station_data_from_gem: :environment do
  Snotel.get_station_data.each do |station_data|
    snotel_station = SnotelStation.find_or_initialize_by(triplet: station_data[:triplet])

    snotel_station.elevation = station_data[:elevation]
    snotel_station.longitude = station_data[:longitude]
    snotel_station.latitude  = station_data[:latitude]
    snotel_station.name      = station_data[:name]
    snotel_station.token     = station_data[:name].gsub(/[^0-9a-z ]+/i, '').gsub(/ /, '_').downcase
    snotel_station.state     = station_data[:triplet].split(/:/)[1]

    snotel_station.save
  end
end

desc "Update resorts from data"
task update_resorts_from_data: :environment do
  ResortData::Idaho::RESORTS.each do |resort_data|
    resort_token = resort_data[:name].gsub(/[^0-9a-z ]+/i, '').gsub(/ /, '_').downcase
    resort = Resort.find_or_initialize_by(token: resort_token)
    resort.update(resort_data.merge(state: 'ID'))
  end
end

desc "Update snowfall data"
task update_snowfall_data: :environment do
  SnotelStation.find_each(batch_size: 100) do |snotel_station|
    SnotelStation.update_snowfall!(snotel_station.id)
  end
end
