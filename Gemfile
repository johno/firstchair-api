source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'rails-api'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'unicorn'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers'

  gem 'sqlite3'
end

gem 'rspec' # Outside of dev/test for rake tasks.

gem 'figaro'
gem 'snotel'
gem 'forecast_io'
gem 'rack-cors', require: 'rack/cors'
