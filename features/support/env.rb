# frozen_string_literal: true

require 'rubygems'

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'webdrivers'
require 'rspec/wait'

require_relative 'config'

require './lib/helpers/driver_registration'

Registration::DriverRegistration.register_chrome_browser

ENV['SELENIUM_GRID'] = (ENV['SELENIUM_GRID'] || 'false').to_s

# Capybara automation options
Capybara.configure do |config|
  config.app_host = 'https://cassandra:5000/browser'
  config.default_driver = :chrome
  config.default_max_wait_time = 5
end

World(Capybara,
  RSpec::Wait)