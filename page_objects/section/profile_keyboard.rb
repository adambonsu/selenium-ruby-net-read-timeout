# frozen_string_literal: true

module Base
  class ProfileKeyboard < SitePrism::Section
    element :title, '.Takeover__title'
    section :keyboard_section, Base::Keyboard, '.Keyboard'
    elements :dialog_buttons, '.DialogButtons button'
    element :cancel, '#cancelButton'
    element :create, '#confirmButton'
    element :input_field, "[data-testid='EntryField']"

    def enabled?(button)
      !send(button).disabled?
    end

    def disabled?(button)
      send(button).disabled?
    end
  end
end
