# frozen_string_literal: true

require 'rubygems'

require 'capybara'
require 'selenium-webdriver'


def delay_between_calls
    ARGV.length > 0 ? ARGV[0].to_i : 5
end

def delay_after_test
    ARGV.length > 1 ? ARGV[1].to_i : 0
end


def register_chrome_browser
  options = Selenium::WebDriver::Chrome::Options.new(logging_prefs: { browser: 'ALL' },
                                                     detach: true, args: ['--ignore-certificate-errors', '--no-sandbox', '--disable-gpu', '--autoplay-policy=no-user-gesture-required'])

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options)
  end
end

def configure_capybara
  Capybara.configure do |config|
    config.app_host = 'https://uk.yahoo.com/'
    config.default_driver = :chrome
    config.default_max_wait_time = 120
  end
  Capybara.session_name = "some other session"
end


def recreate_timeout(delay)
    Capybara.current_session.visit('http://www.google.com') # browser launches and loads google.com
    sleep delay
    Capybara.current_session.visit('https://example.com/') # Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
end

register_chrome_browser
configure_capybara
recreate_timeout(delay_between_calls)
sleep delay_after_test

