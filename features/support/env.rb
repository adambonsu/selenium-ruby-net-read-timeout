# frozen_string_literal: true

require 'rubygems'

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'

def register_chrome_browser
  options = Selenium::WebDriver::Chrome::Options.new(logging_prefs: { browser: 'ALL' },
                                                     detach: true, args: ['--ignore-certificate-errors', '--no-sandbox', '--disable-gpu', '--autoplay-policy=no-user-gesture-required'])

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options)
  end
end

register_chrome_browser

# Capybara automation options
Capybara.configure do |config|
  config.app_host = 'https://uk.yahoo.com/'
  config.default_driver = :chrome
  config.default_max_wait_time = 5
end

World(Capybara)