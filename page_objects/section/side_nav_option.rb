# frozen_string_literal: true

module Base
  class SideNavOption < SitePrism::Section
    element :label_element, '.MainNavLink__label', visible: :all
    element :profile_label_element, '.MainNavLink__label-profile'

    def label
      label_element.text
    end
  end
end
