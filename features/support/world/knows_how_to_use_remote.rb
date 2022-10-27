# frozen_string_literal: true

module KnowsHowToUseRemote
  def remote_translations(action)
    case action
    when :back
      :escape
    when :ok
      :enter
    else
      action
    end
  end

  def remote(action)
    element = find_all('.focus', wait: false).empty? ? find('body') : find_all('.focus').first
    element.send_keys((remote_translations(action)))
    sleep 0.2
  rescue TypeError => e
    log "KnowsHowToNavigateCassandra#remote(#{action}): #{e.inspect}"
  rescue Capybara::ElementNotFound => e
    log "KnowsHowToUseRemote#remote(#{action}): #{e.inspect}"
    find('body').native.send_keys(action)
  rescue Selenium::WebDriver::Error::StaleElementReferenceError => e
    log "KnowsHowToUseRemote#remote(#{action}): #{e.inspect}"
    find('body').native.send_keys(action)
  rescue Selenium::WebDriver::Error::ElementNotInteractableError => e
    log "KnowsHowToUseRemote#remote(#{action}): #{e.inspect}"
    find('body').native.send_keys(action)
  end

  def navigate_with_remote(direction, error_message, timeout = 60, polling_interval = 1, &block)
    time_limit = Time.now + timeout
    count = 0
    loop do
      break count if event_occurred?(&block) || Time.now >= time_limit

      remote direction
      count += 1
      sleep polling_interval
    end
    eventually { expect(event_occurred?(&block)).to be(true), error_message }
    count
  end
end

World(KnowsHowToUseRemote)
