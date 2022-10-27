# frozen_string_literal: true

require 'rubygems'

require 'active_support/core_ext/string/inflections'
require 'allure-cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'jwt'
require 'require_all'
require 'selenium-webdriver'
require 'site_prism'
require 'webdrivers'
require 'rspec/wait'

require_relative 'config'

project_root = File.expand_path('../../', __dir__)
require_all File.join(project_root, 'patches')
require_all File.join(project_root, 'lib')
require_all File.join(project_root, 'lib/helpers') # superfluous because of line above
require_all File.join(project_root, 'page_objects/section')
require_all File.join(project_root, 'page_objects/page')
require_all File.join(project_root, 'features/support/helpers')
require_all File.join(project_root, 'features/support/world')

include AsyncSupport

Registration::DriverRegistration.register_chrome_browser

ENV['SELENIUM_GRID'] = (ENV['SELENIUM_GRID'] || 'false').to_s

# Capybara automation options
Capybara.configure do |config|
  config.app_host = Config.get_value(:environment, 'base_url')
  config.default_driver = :chrome
  config.default_max_wait_time = 5
end

World(Capybara,
  RSpec::Wait)