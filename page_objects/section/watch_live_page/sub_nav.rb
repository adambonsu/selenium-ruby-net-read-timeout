# frozen_string_literal: true

require_relative '../sub_nav'

module WatchLivePage
  class SubNav < SitePrism::Section
    sections :option_elements, Base::SubNavOption, 'li .SubNav__link'

    def options
      option_elements.map { |option_element| option_label_for(option_element) }
    end

    def option_with_focus
      option_label_for(option_elements.find(&:focus?))
    end

    def option_label_for(option_element)
      option_element.native[:id][/(.*)-link/, 1] if option_element
    end
  end
end
