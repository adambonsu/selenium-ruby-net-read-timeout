# frozen_string_literal: true

module Base
  class Settings < Base::Global
    set_url '/settings'
    set_url_matcher %r{/settings/}
    element :title, '.PageHeader__title'
    element :down_arrow, '.ScrollableText__arrowDown'
    elements :arrow, '.ScrollableText__button'
    element :focus, '.focus'
    element :parental_controls, '#parentalControlsPage'
    element :terms_and_conditions, '#termsPage'
    element :privacy, '#privacyPage'
    element :cookie_policy, '#cookiePolicyPage'
    element :location, '#locationPage'
    element :about, '#aboutPage'
    element :sign_in, '#signInPage'
    element :profiles, '#ProfilesPage'
  end
end
