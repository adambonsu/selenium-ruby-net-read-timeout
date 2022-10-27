# frozen_string_literal: true

module Base
  class ProfileOnboarding < SitePrism::Section
    elements :onboarding_buttons, '.KidsOnboarding__button'
    element :not_now_button, ' #doItLater'
    element :create_profile_button, '#createProfile'
    element :button_with_focus_element, '.Button.focus'

    def button_with_focus
      button_with_focus_element if has_button_with_focus_element?(wait: false)
    end

    def onboarding_buttons_index(button)
      buttons = ['Not now', 'Create profile']
      buttons.find_index(button)
    end
  end
end
