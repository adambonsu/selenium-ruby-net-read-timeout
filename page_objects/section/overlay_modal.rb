# frozen_string_literal: true

module Base
  class OverlayModal < SitePrism::Section
    elements :advice_elements, 'p'
    element :footer_element, '.OverlayFooter'
    elements :option_elements, '.Button'
    element :title_element, 'h2'
    element :button_with_focus_element, '.Button.focus'

    def advice
      advice_elements.map(&:text)
    end

    def footer
      footer_element.text
    end

    def options
      option_elements.map(&:text)
    end

    def option_with_focus
      option = option_elements.find(&:focus?)
      option&.text
    end

    def title
      title_element.text
    end

    def button_with_focus
      button_with_focus_element if has_button_with_focus_element?(wait: false)
    end
  end
end
