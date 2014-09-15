require 'rspec/core/rake_task'

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

RSpec::Core::RakeTask.new(:spec)

task test:    [ :spec ]
task default: [ :spec ]
