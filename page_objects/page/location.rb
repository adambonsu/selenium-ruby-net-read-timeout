# frozen_string_literal: true

module Base
  class Location < Base::Global
    set_url_matcher %r{/settings/location}
    element :location_details, '.Location__details--message'
    elements :buttons, '.Location__button'
    element :region, '.Location__area'
    element :location_page, '#locationPage'
    section :location_form, Base::LocationForm, '.LocationForm'
    element :focus, '.focus'
    element :button_with_focus_element, '.Button.focus'

    def button_with_focus
      button_with_focus_element if has_button_with_focus_element?(wait: false)
    end
  end
end
