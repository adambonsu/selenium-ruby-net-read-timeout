# frozen_string_literal: true

module Base
  class SubNavOption < SitePrism::Section
    element :label_element, '.SubNav__link'

    def label
      label_element.text
    end
  end
end
