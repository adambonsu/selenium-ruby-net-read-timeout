# frozen_string_literal: true

require_relative '../section/player/overlay'

module Base
  class Video < SitePrism::Section
    element :spinner, '.Spinner', visible: true
    section :onward_journey, Base::OnwardJourney, '#onwardJourney'

    alias buffering_animation spinner

    def paused?
      state == 'paused'
    end

    def playing?
      state == 'playing'
    end

    def state
      root_element[:'data-play-state']
    end
  end
end
