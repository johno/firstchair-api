source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'rails-api'

gem 'pg'

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers'
end

gem 'sqlite3', group: :test

gem 'rspec' # Outside of dev/test for rake tasks.

gem 'figaro'
gem 'snotel'
gem 'forecast_io'
gem 'rack-cors', require: 'rack/cors'

gem 'delayed_job_active_record'
