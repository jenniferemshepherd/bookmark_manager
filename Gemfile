# frozen_string_literal: true

source "https://rubygems.org"

ruby '2.4.1'

git_source(:github) {|bookmark_manager| "https://github.com/bookmark_manager" }

gem 'data_mapper'
gem 'dm-postgres-adapter'
gem 'sinatra'

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rspec'
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
