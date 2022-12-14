# frozen_string_literal: true

require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

def delay_between_calls
    ARGV.length > 0 ? ARGV[0].to_i : 5
end

def delay_after_test
    ARGV.length > 1 ? ARGV[1].to_i : 0
end

def driver
  @driver || register_chrome_browser
end

def register_chrome_browser
    options = Selenium::WebDriver::Chrome::Options.new(logging_prefs: { browser: 'ALL' },
        detach: true, args: ['--ignore-certificate-errors', '--no-sandbox', '--disable-gpu', '--autoplay-policy=no-user-gesture-required'])
    service = Selenium::WebDriver::Service.chrome(args: ['--verbose'])
    @driver = Selenium::WebDriver.for :chrome, :capabilities => options, service: service
end

def recreate_issue(delay_between_calls)
  driver.get 'https://www.google.com'
  sleep(delay_between_calls)
  driver.get 'https://example.com'
end

Selenium::WebDriver.logger.level = :debug
register_chrome_browser
recreate_issue(delay_between_calls)
sleep delay_after_test
driver.quit