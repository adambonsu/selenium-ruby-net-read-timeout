# frozen_string_literal: true

module Base
  class ParentalControlsOverlay < SitePrism::Section
    element :cancel_button, '#cancelButton'
    elements :buttons, '.DialogButtons__button'
    element :confirm_button, '#confirmButton'
    element :confirm_turn_on_parental_controls_dialog, "[data-testid='parental-controls-confirmation']"

    section :keyboard, Base::Keyboard, '#keyboard'
    element :message, '.PINEntry__error'
    element :support_message, '.Takeover__title'
    element :ok_button, '#parental-controls-support-ok'
    element :security_answer_button, '#optionButton'
    elements :option_elements, '.DialogButtons .Button'
    element :parental_controls_pin_dialog, '#parental-controls-pin'
    element :provide_security_answer_dialog, '#parental-controls-security-answer'
    element :forgotten_security_answer_dialog, '.DialogButtons'
    element :pin_entry_field, '.PINEntry__entryField'
    element :security_answer_entry_field, "[data-testid='EntryField']"
    element :parental_guidance_dialog, "[data-testid='guidance-dialog']"
    element :security_question, '.Takeover__title'
    element :security_answer_error, '.SecurityAnswer__error'
    element :parental_controls_button, '.ParentalGuidance__OptionButton'
    element :parental_controls_create_pin, '[data-testid="PinProtect"]'
    elements :parental_controls_create_pin_dialog_buttons, '.PinProtect__button'
    element :not_now_button, ' #PinProtect__notNow'
    element :create_pin_button, '#PinProtect__createPin'
    element :account_password_dialog, '.AccountPassword'
    elements :account_password_buttons, '.AccountPassword__btn--notLink'
    element :incorrect_password_dialog, '.FailedLoginModal'

    alias next_button confirm_button

    def confirm_turn_on_parental_controls?
      has_confirm_turn_on_parental_controls_dialog? wait: false
    end

    def options
      option_elements.reject(&:disabled?)
    end

    def button_with_focus
      find('button.focus').text
    end

    def parental_controls_pin?
      has_parental_controls_pin_dialog? wait: false
    end

    def provide_security_answer?
      has_provide_security_answer_dialog? wait: false
    end

    def forgotten_security_answer?
      has_forgotten_security_answer_dialog? wait: false
    end

    def parental_guidance_dialog?
      has_parental_guidance_dialog? wait: false
    end
  end
end
