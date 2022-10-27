# frozen_string_literal: false

class CapybaraScreenshot
  def self.screenshot_path
    File.expand_path(File.join(__dir__, '/../../screenshots'))
  end

  def self.take_screenshot(scenario_name)
    Capybara.save_screenshot "#{screenshot_path}/#{scenario_name}.png"
    Allure.add_attachment(name: 'Screenshot', source: File.open("#{screenshot_path}/#{scenario_name}.png"), type: Allure::ContentType::PNG, test_case: false)
  end

  def self.save_page(scenario_name)
    Capybara.save_page "#{screenshot_path}/#{scenario_name}.html"
    Allure.add_attachment(name: 'Raw HTML', source: File.open("#{screenshot_path}/#{scenario_name}.html"), type: Allure::ContentType::TXT, test_case: false)
  end

  def self.save_network_logs
    network_log = Capybara.page.execute_script('var performance = window.performance || window.mozPerformance || window.msPerformance || window.webkitPerformance || {}; var network = performance.getEntries() || {}; return network;').map { |r| r['name'] }
    network_str = "\n[******************* BROWSER NETWORK REQUESTS ********************************************\n"
    network_log.each_with_index { |p, i| network_str << "[#{i}] #{p}\n" }
    Allure.add_attachment(name: 'Network log', source: network_str, type: Allure::ContentType::TXT, test_case: false)
  end

  def self.save_console
    logs = PageHelpers.console

    # Reject some endpoints such as last watched from error logs as 404 and 401 responses are valid api results not errors
    logs = logs.reject { |e| e.message.include?('/lastwatched') || e.message.include?('/verify') || e.message.include?('/resume') }

    save_warnings(logs)
    save_errors(logs)
  end

  def self.save_warnings(logs)
    warnings = logs.select { |e| e.level == 'WARNING' }
    return if warnings.empty?

    warning_str = "\n******************* BROWSER CONSOLE WARNINGS ********************************************\n"
    warnings.each_with_index { |w, i| warning_str << "[#{i}] #{w.message}\n" }
    warning_str << "\n*****************************************************************************************\n"
    Allure.add_attachment(name: 'Console warnings', source: warning_str, type: Allure::ContentType::TXT, test_case: false)
  end

  def self.save_errors(logs)
    errors = logs.reject { |e| e.level == 'WARNING' }
    return if errors.empty?

    error_str = "\n******************* BROWSER CONSOLE ERRORS **********************************************\n"
    errors.each_with_index { |e, i| error_str << "[#{i}] #{e.message}\n" }
    error_str << "\n*****************************************************************************************\n"
    Allure.add_attachment(name: 'Console errors', source: error_str, type: Allure::ContentType::TXT, test_case: false)
  end
end
