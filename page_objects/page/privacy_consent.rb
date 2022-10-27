# frozen_string_literal: true

module Base
  class PrivacyConsent < SitePrism::Section
    element :read_notice_button, '#viewPolicy'
    element :got_it_button, '#acceptPolicy'
    element :title_element, 'h2'

    def title
      title_element.text
    end
  end
end
