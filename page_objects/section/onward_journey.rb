# frozen_string_literal: true

module Base
  class OnwardJourney < SitePrism::Section
    element :countdown_element, '#nextEpisode'
    element :next_episode_element, '[data-testid="onward-journey-programme-info"]'
    element :onward_journey_hero, '[class="OnwardJourney__gradient"]'
    element :onward_journey_synopsis, '[class="OnwardJourney__synopsis"]'
    element :minimised_player, '#focusFrame'
    element :because_you_watched_grid, '#owjGrid'

    def countdown
      countdown_element.text
    end

    def next_episode
      next_episode_element.text
    end
  end
end
