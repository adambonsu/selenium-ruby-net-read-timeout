# frozen_string_literal: true

require_relative 'side_nav_option'

module Base
  class SideNav < SitePrism::Section
    sections :options, Base::SideNavOption, '.MainNavLink'
    element :profile_avatar, '#profiles-link'

    def option_with_focus
      option = options.find(&:focus?)
      option&.label
    end

    def label
      option_elements.map(&:label)
    end
  end
end
