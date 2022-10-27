# frozen_string_literal: true

module Base
  class SignIn < Base::Global
    set_url '/settings/sign-in'
    set_url_matcher %r{/settings/sign-in}

    element :continue, '.SignInManual__btn--notLink'
    element :sign_in_button, '#signInActions'
    element :sign_in_to_itv_hub_button, '.SignIn__button'
    section :sign_in_keyboard, Base::Keyboard, '#keyboard'
  end
end
