# frozen_string_literal: true

require_relative 'sub_nav_option'

module Base
  class SubNav < SitePrism::Section
    sections :option_elements, Base::SubNavOption, 'li'
    element :title, '.SubNav__title'

    def focus?
      option_with_focus ? true : false
    end

    def options
      option_elements.map(&:label)
    end

    def option_with_focus
      option = option_elements.find(&:focus?)
      option&.label
    end
  end
end
