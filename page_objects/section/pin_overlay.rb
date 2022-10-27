# frozen_string_literal: true

module Base
  class PinOverlay < SitePrism::Section
    elements :dialog_buttons, '.DialogButtons__button'
    element :cancel_button, '#cancelButton'
    element :next_button, '#confirmButton'
    element :pin_error, '.PINEntry__error'
    section :keyboard, Base::Keyboard, '#keyboard'
  end
end
