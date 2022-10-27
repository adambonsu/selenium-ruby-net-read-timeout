# frozen_string_literal: true

module Base
  class VerifyEmail < Base::Global
    element :title_element, 'h2'
    elements :buttons, '.Button'

    def title
      title_element.text
    end

    def options
      buttons.map(&:text)
    end

    def option_with_focus
      option = buttons.find(&:focus?)
      option&.text
    end
  end
end
