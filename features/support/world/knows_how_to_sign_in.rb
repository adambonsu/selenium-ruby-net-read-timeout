# frozen_string_literal: true

module KnowsHowToSignIn
  def sign_in_via_pairing(account_type, show_privacy_policy = false)
    navigate_to_sign_in
    eventually { expect(app.current_page&.name).to match(/SignInPairing/) }
    eventually(wait_afterwards: 1) { UserHelper.config_test_user_for_pairing_code_sign_in(account_type, show_privacy_policy) }
  end

  def sign_in_via_remote(email, password)
    navigate_to_sign_in
    eventually { expect(app.current_page&.name).to match(/SignInPairing/) }
    expect(app.home.button_focus.text).to eq 'Sign in with TV remote'
    remote :enter
    sign_in_keyboard_input(email, password)
  end

  def sign_in_keyboard_input(email, password)
    expect(app.sign_in_manual.entry_field).to have_text 'Please enter your email address'
    app.sign_in_manual.sign_in_keyboard.enter_text(email)
    navigate_to_continue_button_from_keyboard
    app.sign_in_manual.sign_in_keyboard.enter_text(password)
    navigate_to_continue_button_from_keyboard
  end

  def navigate_to_sign_in
    return unless app.current_page.name == 'Home'

    navigate_to_sign_in_page
    expect(app.sign_in.sign_in_to_itv_hub_button.focus?).to be(true)
    remote :enter
  end

  def check_kids_onboarding_screen
    return unless app.home.has_profile_onboarding_screen?

    log app.home.button_focus.text
    case app.home.button_focus.text
    when 'Create profile'
      remote :left
      remote :enter
    when 'Not now'
      remote :enter
    end
  end

  def navigate_down_to_cancel_button_from_keyboard
    time_limit = Time.now + 60
    loop do
      break if (app.sign_in_manual.buttons.select(&:focus?).map(&:text).include? 'CANCEL') || Time.now >= time_limit

      remote :down
    end
  end

  def navigate_to_continue_button_from_keyboard
    navigate_down_to_cancel_button_from_keyboard
    time_limit = Time.now + 60
    loop do
      break if (app.sign_in_manual.buttons.select(&:focus?).map(&:text) == ['CONTINUE'])|| Time.now >= time_limit

      remote :right
    end
    expect(app.sign_in_manual.buttons.select(&:focus?).map(&:text) == ['CONTINUE']).to be(true)
    remote :enter
  end
end

World(KnowsHowToSignIn)
