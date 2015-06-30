ENV["SINATRA_ENV"] ||= "development"

require 'sinatra/activerecord/rake'
require_relative './config/environment'

# Type `rake -T` on your command line to see the available rake tasks.

desc 'Fires up a Pry console'
task :console do
  Rake::Task['db:drop'].execute
  Pry.start
end