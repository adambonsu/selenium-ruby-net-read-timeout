# frozen_string_literal: true

class PageHelpers
  def self.resize_window(width, height)
    Capybara.page.driver.browser.manage.window.resize_to(width, height)
  end

  def self.maximize_window
    Capybara.page.driver.browser.manage.window.maximize
  end

  def self.window_count
    Capybara.page.windows.count
  end

  def self.switch_windows
    driver = Capybara.current_session.driver
    browser = driver.browser
    handles = driver.window_handles
    browser.switch_to.window(handles[handles.length - 1]) if handles.length > 1
  end

  def self.fullpage_height
    Capybara.page.evaluate_script(%(document.documentElement.offsetHeight + 100;))
  end

  def self.fullpage
    size = Capybara.page.current_window.size
    resize_window(size[0], fullpage_height)
  end

  def self.accept_itv_cookies
    set_local_storage('itv-cookies-accepted', 'true')
    set_local_storage('itv-greeted', 'true')
  end

  def self.set_parental_controls(security_answer, pin, question = false)
    credentials = {
      pin: pin,
      question: question,
      answer: security_answer
    }
    set_local_storage('itv-parental-controls', credentials.to_json)
  end

  def self.accept_cookies
    set_local_storage('itv-cookies-accepted', 'true')
  end

  def self.update_broadcaster_itv
    set_local_storage('itv-broadcaster', '"ITV"')
  end

  def self.reset_parental_controls
    eventually { Capybara.page.evaluate_script("localStorage.removeItem('itv-parental-controls');") }
  end

  def self.update_broadcaster_stv
    set_local_storage('itv-broadcaster', '"STV"')
  end

  def self.update_itv_user(access_token, refresh_token, email_verified)
    user_profile = {
        emailVerified: email_verified,
        tokenType: 'bearer',
        accessToken: access_token,
        refreshToken: refresh_token
    }
    set_local_storage('itv-user', "{\"content\": #{user_profile.to_json}}")
  end

  def self.configure_user_session(user)
    set_local_storage('itv-user', "{\"content\": #{user.to_json.camelize(:lower)}}")
  end

  def self.add_cookie(cookie_details)
    Capybara.page.driver.browser.manage.add_cookie(cookie_details)
  end

  def self.substitute_encoders(cookie)
    cookie[:value].gsub(/%2C/, ',').gsub(/%22/, '"')
  end

  def self.get_cookie(cookie_name)
    Capybara.page.driver.browser.manage.cookie_named(cookie_name)
  end

  def self.refresh_page
    Capybara.page.driver.browser.navigate.refresh
  end

  def self.current_url
    Capybara.page.driver.current_url
  end

  def self.clear_browser_storage
    Capybara.page.execute_script('sessionStorage.clear()')
    Capybara.page.execute_script('localStorage.clear()')
    Capybara.page.execute_script('console.clear()')
    # Capybara.current_session.reset!
    Capybara.current_session.quit
  end

  def self.set_local_storage(key, value)
    eventually { Capybara.page.evaluate_script("localStorage.setItem('#{key}','#{value}');") }
  end

  def self.get_local_storage(key)
    # added sleep to allow time to capture the latest storage key item, without sleep it takes the previous value
    sleep 1
    Capybara.page.evaluate_script("localStorage.getItem('#{key}')")
  end

  def self.console
    Capybara.page.driver.browser.logs.get(:browser)
  end

  def self.get_style_attribute(element_id, attribute)
    Capybara.page.evaluate_script("(document.getElementsByClassName(\"#{element_id}\"))[0]").style(attribute.to_s)[attribute.to_s].partition('px').first.to_f
  end

  def self.sim_player_point_before_live(time)
    time_stamp = Time.now.to_i - time
    Capybara.page.evaluate_script("document.getElementsByTagName('video')[0].currentTime=#{time_stamp}")
  end

  def self.emit_firebolt_test_harness_state(state)
    Capybara.page.evaluate_script("window.$firebolt_test_harness.state('#{state}')")
  rescue StandardError => e
    e.inspect
  end

  def self.emit_onesdk_enable_ad_skipping
    eventually(wait_afterwards: 3) { Capybara.page.evaluate_script('window.onesdk._itv.enableAdSkipping()') }
    Capybara.page.evaluate_script("await window.onesdk.isPackageEntitled('ITV_ID')")
  rescue StandardError => e
    e.inspect
  end

  def self.emit_onesdk_disable_ad_skipping
    eventually(wait_afterwards: 3) { Capybara.page.evaluate_script('window.onesdk._itv.disableAdSkipping()') }
    Capybara.page.evaluate_script("await window.onesdk.isPackageEntitled('ITV_ID')")
  rescue StandardError => e
    e.inspect
  end

  def self.display_one_sdk_verion
    Capybara.page.evaluate_script('window.onesdk.VERSION')
  rescue StandardError => e
    e.inspect
  end
end
