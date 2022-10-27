# frozen_string_literal: true

Allure.configure do |config|
  config.results_directory = 'allure-results'
  config.clean_results_directory = true
  # config.logging_level = Logger::INFO
  # config.logger = Logger.new($stdout, Logger::INFO)
  config.environment = ENV['ENVIRONMENT']

  # these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
  # config.link_tms_pattern = "http://www.jira.com/browse/{}"
  # config.link_issue_pattern = "http://www.jira.com/browse/{}"

  config.environment_properties = {
    acceptance_test_branch: ENV['GIT_BRANCH'] || 'master',
    cassandra_branch: ENV['CASSANDRA_BRANCH'] || 'master',
    cucumber_profile: ENV['ENVIRONMENT']
  }

  # categories.json
  # config.categories = File.new("my_custom_categories.json")
end
