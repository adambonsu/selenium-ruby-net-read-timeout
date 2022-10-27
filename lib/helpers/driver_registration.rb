# frozen_string_literal: true

module Registration
  class DriverRegistration
    def self.register_chrome_browser
      options = Selenium::WebDriver::Chrome::Options.new(logging_prefs: { browser: 'ALL' },
                                                         detach: true, args: ['--ignore-certificate-errors', '--no-sandbox', '--disable-gpu', '--autoplay-policy=no-user-gesture-required'])
      # options.add_argument("--enable-features=NetworkService,NetworkServiceInProcess")
      Capybara.register_driver :chrome do |app|
        if ENV['SELENIUM_GRID'] == 'false'
          Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options)
        else
          Capybara::Selenium::Driver.new(app, browser: :remote, url: hub_url, capabilities: options)
        end
      end
    end

    def self.hub_url
      ENV['HUB_HOST'] || 'http://hub:4444/wd/hub'
    end
  end
end
