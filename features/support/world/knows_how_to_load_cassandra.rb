# frozen_string_literal: true

module KnowsHowToLoadCassandra
  def accept_cookies_and_update_location
    PageHelpers.accept_itv_cookies
    PageHelpers.update_broadcaster_itv
    PageHelpers.refresh_page
    PageHelpers.maximize_window
  end

  def browse_app_via_onboarding
    eventually { expect(sign_in_onboarding_loaded?).to be(true) }
    remote :left
    eventually { expect(app.sign_in_onboarding.browse_button.focus?).to be(true) }
    remote :enter
  end

  def load_app_without_signing_in

    require 'pry'; binding.pry

    Capybara.current_session.visit('https://example.com/')
    Capybara.current_session.visit('http://www.google.com')
    Capybara.current_session.visit('http://www.yahoo.com')

    app.home.load

    driver = Selenium::WebDriver.for :chrome, :capabilities => options
    driver.get "https://example.com/"
    sleep 2
    driver.get "https://google.com/"
    sleep 2
    driver.quit

    require 'pry'; binding.pry

    eventually { expect(app.home).to be_displayed }
    accept_cookies_and_update_location
    # browse_app_via_onboarding
    eventually(timeout: 30) { expect(home_loaded?).to be(true) }
  end

  def load_homepage_via_sign_in_pairing(account_type)
    # TODO: removed signin onboarding step and replaced expectation to make sure homepage is loaded (ACM-816)

    # eventually { expect(sign_in_onboarding_loaded?).to be(true) }
    # eventually { expect(app.sign_in_onboarding.next_button.focus?).to be(true) }

    eventually { expect(app.home).to be_displayed }
    UserHelper.config_test_user_for_pairing_code_sign_in(account_type)
    remote :enter

    # eventually { expect(app.sign_in_welcome.continue_button.focus?).to be(true) }
    remote :enter
    check_kids_onboarding_screen
    remote :enter if app.home.has_whos_watching?
    eventually(timeout: 30) { expect(home_loaded?).to be(true) }
  end

  def navigate_to_sign_in_pairing_page_upon_loading_the_app
    # app.home.load
    accept_cookies_and_update_location
    eventually(wait_afterwards: 2) do
      expect(sign_in_onboarding_loaded?).to be(true)
      expect(app.sign_in_onboarding.next_button.focus?).to be(true)
    end
    remote :enter
    eventually(wait_afterwards: 2) { expect(app.sign_in_pairing).to have_code }
  end

  def load_app_sign_in_via_pairing(account_type, parental_controls_set = false, parental_question = false)
    app.home.load
    accept_cookies_and_update_location
    # TODO: Why do we need to handle parental controls and question seperatly?
    if parental_controls_set && parental_question
      @pin = '1111'
      PageHelpers.set_parental_controls('corrie', @pin, 'U2FsdGVkX18s7AASN9RI0de5l3q3X2he+ti00Lw2mbJCoDYdcMLkndRsEICdb9Cs')
    elsif parental_controls_set
      @pin = '1111'
      PageHelpers.set_parental_controls('corrie', @pin)
    end
    # The app wont respond to a change in the parental controls local storage value unless it already set when the app is spun up.
    # Re-load the app to ensure the app is in the configured state
    app.home.load
    load_homepage_via_sign_in_pairing(account_type)
  end

  def load_app_with_broadcaster(broadcaster)
    page.driver.browser.get("#{cassandra_validation_url}/?broadcaster=#{broadcaster.downcase}")
  end

  def sign_in_onboarding_loaded?
    app.current_page&.name == 'SignInOnboarding'
  end

  def wait_for_page_to_load(seconds = 1)
    # allow page to load before doing any assertions as timing issue occurs time to time
    sleep seconds
  end

  def accept_cookies_onboarding
    eventually { expect(app.current_page&.name).to match(/CookiesConsent/) }
    eventually { expect(app.cookies_consent.accept_cookies_button.focus?).to be(true) }
    remote :enter
  end
end

World(KnowsHowToLoadCassandra)
