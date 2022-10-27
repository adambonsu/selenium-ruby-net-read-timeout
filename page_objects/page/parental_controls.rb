# frozen_string_literal: true

require_relative '../section/parental_controls_overlay'

module Base
  class ParentalControls < Base::Global
    set_url '/settings/parental-controls'
    set_url_matcher %r{/settings/parental-controls}
    element :state, "[data-testid='parental-controls-status']"
    element :turn_on_button, '.ParentalControls__button'
    elements :option_elements, 'button'
    section :overlay, Base::ParentalControlsOverlay, '.Takeover__overlay'
    alias turn_off_button turn_on_button

    def options
      option_elements.reject(&:disabled?)
    end
  end
end
