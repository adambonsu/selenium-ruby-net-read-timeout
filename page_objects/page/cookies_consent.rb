# frozen_string_literal: true

module Base
  class CookiesConsent < Base::Global
    element :accept_cookies_button, '#acceptCookies'
    element :read_our_cookie_policy_button, '#readCookiePolicy'
    element :title, '.CookiesConsent__title'
  end
end
