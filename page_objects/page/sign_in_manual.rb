# frozen_string_literal: true

require_relative '../section/keyboard'

module Base
  class SignInManual < SitePrism::Page
    set_url_matcher %r{/settings/sign-in/manual}
    element :password_screen, '.SignInManual__userEmail'
    element :error, '.FailedLoginModal'
    elements :buttons, '.SignInManual__btn'
    element :entry_field, '.StandardEntry__entryField'
    section :sign_in_keyboard, Base::Keyboard, '#keyboard'
  end
end
