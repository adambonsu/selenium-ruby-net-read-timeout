# frozen_string_literal: true

require 'rubygems'

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'webdrivers'
require 'rspec/wait'

require './lib/helpers/driver_registration'

Registration::DriverRegistration.register_chrome_browser

# Capybara automation options
Capybara.configure do |config|
  config.app_host = 'https://cassandra:5000/browser'
  config.default_driver = :chrome
  config.default_max_wait_time = 5
end

World(Capybara,
  RSpec::Wait)