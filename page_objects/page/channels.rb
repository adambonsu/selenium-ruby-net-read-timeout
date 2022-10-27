# frozen_string_literal: true

require_relative 'global'
require_relative '../section/watch_live_page/letterbox'
require_relative '../section/tile'
require_relative '../section/slider'

module Base
  class Channels < Base::Global
    set_url_matcher %r{/channels/}
    element :watch_live, '#watch-live-itv'
    element :channel_icon, 'img[role="channelIcon"]'

    section :sub_nav, WatchLivePage::SubNav, '#SubNav'
    element :subnav_title, '.SubNav__title'
    section :content, Base::WatchLiveContent, '#ChannelsContent'
    section :letterbox, WatchLivePage::Letterbox, '.Letterbox'
    sections :tiles, Base::Tile, '.ProgrammeTile', visible: :all
    element :button_with_focus_element, '.Link.focus'
    elements :basic_tile_title, '.cp_basic-tile__title', visible: :all
    element :sponsorship_logo, '.cp_sponsorship'
    element :button, '.Button'
    elements :advice_elements, 'p'
    section :not_available, Base::OverlayModal, '.ChannelsNotAvailable'
    element :title_element, 'h2'
    element :recent_slider, '.RecentlyOnSlider'
    elements :tile, '.ProgrammeTile'
    elements :recent_channel_tiles, '.cp_slider__list-item', visible: :all
    element :slider_header, '.cp_slider__heading'
    sections :sliders, Base::Slider, '.Slider'
    element :simulcast, '#simulcastPlayButton'
    element :start_again_button, '#simulcastFromStartButton'
    element :progress_bar, "[data-testid='progress-indicator']"
    element :channel_logo, '#letterbox-channel-logo'
    element :watch_live_button, '#watch-live'
    element :watch_from_start_button, '#watch-from-start'

    def button_with_focus
      button_with_focus_element if has_button_with_focus_element?(wait: false)
    end

    def tile_with_focus
      tiles.find(&:focus?)
    end

    def title
      title_element.text
    end

    def slider
      slider_header.text
    end

    def slider_with_focus
      sliders.find(&:focus?)
    end

    def sub_nav_title
      subnav_title.text
    end
  end
end
