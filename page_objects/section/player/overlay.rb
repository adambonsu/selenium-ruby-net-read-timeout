# frozen_string_literal: true

require_relative 'vod_controls_row'
require_relative 'more_episodes_slider'

module Player
  class Overlay < SitePrism::Section
    element :fast_forward_button, '#fastForwardButton'
    section :more_episodes_slider, Player::MoreEpisodesSlider, '#moreEpisodesRow'
    element :parental_controls_button, '#parentalControlsButton'
    element :play_pause_button, '#playPauseButton'
    element :rewind_button, '#rewindButton'
    element :subtitles_button, '#subtitlesButton'
    element :vod_controls, '#vodControls'
    section :vod_controls_row, Player::VodControlsRow, '#vodControlsRow'
    element :forward_speed, '#forwardSpeed'
    element :rewind_speed, '#rewindSpeed'
    element :programme_title, '.cp_metadata__heading'
    element :ad_marker, '.AdMarker'
    element :elapsed_bar, '#elapsedBar'

    def parental_controls_off?
      parental_controls_button.find('.cp_icon__parental-guidance-off', wait: true) ? true : false
    end

    def parental_controls_on?
      parental_controls_button.find('.cp_icon__parental-guidance-on', wait: true) ? true : false
    end

    def visible?
      !(root_element[:class] =~ /PlayerOverlay--visible/).nil?
    end
  end
end
