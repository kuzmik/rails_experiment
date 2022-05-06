# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.1'

gem 'puma', '~> 5.0'
gem 'rails'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'mysql2'

gem 'redis'
gem 'lockbox'

gem 'pry-rails'
gem 'awesome_print'

gem 'sidekiq', require: ['sidekiq', 'sidekiq/web']
gem 'sidekiq-scheduler', require: ['sidekiq-scheduler', 'sidekiq-scheduler/web']
gem 'sidekiq-unique-jobs', require: ['sidekiq']

# To pull from this source, you need to run:
# bundle config gems.contribsys.com <sidekiq_pro_token_in_1pass>
source 'https://gems.contribsys.com/' do
  gem 'sidekiq-pro'
end

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec'
  gem 'rspec-rails'

  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false

  gem 'pry-byebug'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'

  gem 'bundler-audit'
  gem 'brakeman'

  gem 'bullet'
  gem 'database_cleaner'
  gem 'database_rewinder'

  gem 'factory_bot_rails'

  gem 'forgery'
  gem 'timecop'

  gem 'annotate'
  gem 'listen'
  gem 'better_errors'
end

