# frozen_string_literal: true

require_relative '../../section/progress_indicator'
require_relative '../letterbox'

module WatchLivePage
  class Letterbox < Base::Letterbox
    # to do: Ask Devs for id/test ids for the following
    # e.g data-testid='progress-indicator'
    element :channel_backdrop_image, '#letterbox-image'
    element :channel_logo, '#letterbox-channel-logo'
    element :heading, '#letterbox-heading'
    element :next_time, '#letterbox-next-time'
    section :progress_indicator, Base::ProgressIndicator, "[data-testid='progress-indicator']"
    element :sub_heading, '#letterbox-subheading'
    element :time, '#letterbox-now-time'
    element :description, "[data-testid='description']"
  end
end
