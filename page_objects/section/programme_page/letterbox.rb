# frozen_string_literal: true

require_relative '../progress_indicator'

module ProgrammePage
  class Letterbox < Base::Letterbox
    element :cta, '#playButtonId'
    element :tag, '.cp_tag'
    section :watched_progress_bar, Base::ProgressIndicator, "[data-testid='progress-indicator']"
  end
end
