# frozen_string_literal: true

module Base
  class SignInPairing < Base::Global
    set_url_matcher %r{/settings/sign-in/pair}
    element :pairing_screen, '.CodeSignIn__container'
    element :code, '.PinPairing__loginCode'
    element :welcome_message, '.SignedInView__title'
    element :continue_button, '#continueButton'
  end
end
