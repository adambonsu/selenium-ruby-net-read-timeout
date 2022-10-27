# frozen_string_literal: true

require_relative 'keyboard'

module Base
  class LocationForm < SitePrism::Section
    element :button, '.LocationForm__button'
    element :confirm_button, '#confirmButton'
    element :confirm, '#confirmButton'
    element :status, '.LocationForm__status'

    element :focus, '.focus'
    element :button_with_focus_element, '.Button.focus'

    def button_with_focus
      button_with_focus_element if has_button_with_focus_element?(wait: false)
    end
    section :keyboard, Base::Keyboard, '#keyboard'
  end
end
