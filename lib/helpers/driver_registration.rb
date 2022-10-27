# frozen_string_literal: true

module Registration
  class DriverRegistration
    def self.register_chrome_browser
      options = Selenium::WebDriver::Chrome::Options.new(logging_prefs: { browser: 'ALL' },
                                                         detach: true, args: ['--ignore-certificate-errors', '--no-sandbox', '--disable-gpu', '--autoplay-policy=no-user-gesture-required'])

      Capybara.register_driver :chrome do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options)
      end
    end
  end
end
