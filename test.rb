# frozen_string_literal: true

require 'rubygems'

require 'capybara'
require 'selenium-webdriver'

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
end

def recreate_timeout(delay = 3)
    Capybara.current_session.visit('http://www.google.com') # browser launches and loads google.com
    sleep delay
    Capybara.current_session.visit('https://example.com/') # Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
end



recreate_timeout(3)
sleep 2

