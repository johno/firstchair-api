desc "Update resorts from data"
task update_resorts_from_data: :environment do
  ResortData::Idaho::RESORTS.each do |resort_data|
    resort_token = resort_data[:name].gsub(/[^0-9a-z ]+/i, '').gsub(/ /, '_').downcase
    resort = Resort.find_or_initialize_by(token: resort_token)
    resort.update(resort_data.merge(state: 'ID'))
  end
end
