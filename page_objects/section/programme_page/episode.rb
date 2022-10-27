# frozen_string_literal: true

require_relative '../progress_indicator'

module ProgrammePage
  class Episode < SitePrism::Section
    element :days_left, '.Episode__days-left'
    element :description_element, '.Episode__description'
    element :duration_element, '.Episode__duration'
    element :episode_title, '.Episode__title', visible: :all
    element :focus, '.focus'
    element :guidance, '.cp_icon__guidance', visible: :all
    element :sub_title_element, '.Episode__subtitle'
    element :tags_element, '.Episode__tags'
    section :watched_progress_bar, Base::ProgressIndicator, "[data-testid='episode-progress-indicator']"

    def description
      description_element.text
    end

    def duration
      duration_element.text
    end

    def focus?
      has_focus?(wait: false)
    end

    def sub_title
      sub_title_element.text
    end

    def title
      episode_title.text
    end
  end
end
