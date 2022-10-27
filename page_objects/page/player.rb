# frozen_string_literal: true

require_relative '../section/player/channel_tiles'
require_relative '../section_base'

module Base
  # Abstract class for common player page objects
  class Player < Base::Global
    set_url_matcher %r{/vod*|/simulcast/*}

    element :categories, '#categories-link'
    element :elapsed_time, '#elapsedTime', visible: :all
    element :home, '#home-link'
    section :overlay, ::Player::Overlay, '#playerOverlay', visible: :all
    element :search, '#search-link'
    element :time_remaining, '#timeRemaining', visible: :all

    # TODO: This is coded to vodPlayer to support older tests using app.player.video, refactor to app.vod_player.video
    section :video, Base::Video, '#vodPlayer'
    section :simulcast_video, Base::Video, '#simPlayer'
  end

  # VOD player screen
  class VodPlayer < Base::Player
    section :onward_journey, Base::OnwardJourney, '#onwardJourney'
    set_url '/vod%3fproductionId={programme_id}'
    set_url_matcher %r{/vod*}
  end

  # Simulcast player screen
  class SimulcastPlayer < Base::Player
    set_url '/simulcast/{channel_id}'
    set_url_matcher %r{/simulcast/*}

    # section :video, Base::Video, '#simPlayer'
    element :simulcast, '#simPlayer'
    element :play_bar, '#simScrubBar'
    element :stop_button, '#stopButton'

    section :overlay, ::Player::Overlay, '#playerOverlay', visible: :all
    element :heading, '.cp_metadata__heading', visible: :all
    # element :heading, '.cp_heading'
    element :channel_slider, '#ChannelSlider'
    element :bottom_nav, '#bottomNav'
    elements :bottom_nav_options, '.BottomNavLink__label'
    element :time_frame, '.cp_episode-info__custom-text', visible: :all
    element :itv_logo, '.cp_icon__logo-itv-mono-neg'
    elements :logo, '.LiveTVTile__logoWrapper', visible: :all
    elements :title, '.LiveTVTile__title', visible: :all
    elements :time_span, '.LiveTVTile__timeSpan', visible: :all
    element :home_button, '#home-link'
    sections :channel_tiles, ::SimulcastPlayer::ChannelTiles, '.Link ', visible: :all
    element :restart_programme, '.SimControls__startAgain'
    element :onward_journey, '.StartAgainOnwardJourney'
    section :total_scrub_bar, PageObjects::SectionBase, '.ScrubBar__total-bar', visible: :all
    element :elapsed_bar, '.ScrubBar__elapsed - bar', visible: :all
    element :elapsed_time, '.ScrubBar__elapsed-time', visible: :all
    element :time_remaining, '.ScrubBar__time-remaining', visible: :all

    def all_titles
      title.map(&:text)
    end

    def channel_tile_title_index(title)
      channel_tile = all_titles
      channel_tile.find_index(title)
    end

    def programme_start_time
      if afternoon?
        Time.parse(time_frame.text.partition('-').first.partition(/.m/).first).to_i + (60 * 60 * 12)
      else
        Time.parse(time_frame.text.partition('-').first.partition(/.m/).first).to_i
      end
    end

    def programme_end_time
      if afternoon?
        Time.parse(time_frame.text.partition('-').last.partition(/.m/).first).to_i + (60 * 60 * 12)
      else
        Time.parse(time_frame.text.partition('-').last.partition(/.m/).first).to_i
      end
    end

    def afternoon?
      time_frame.text.include?('p')
    end

    def programme_duration
      programme_end_time - programme_start_time
    end

    def programme_current_time
      (Time.parse(elapsed_time.text) - Time.parse('00:00:00')).to_i
    end

    def programme_time_remaining
      Time.parse(time_remaining.text).to_i
    end

    def programme_current_position
      PageHelpers.get_style_attribute('ScrubBar__elapsed-bar', 'width')
    end

    def percentage_duration
      (programme_current_time / programme_duration) * 100
    end
  end
end
