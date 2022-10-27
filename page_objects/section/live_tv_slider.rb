# frozen_string_literal: true

require_relative 'live_tv_slider/tile'
require_relative 'slider'

module Base
  class LiveTvSlider < Base::Slider
    # to do: remove most of these methods - channel links have been replaced by tile#channel
    elements :title, '.LiveTVTile__title', visible: :all
    elements :time_span, '.LiveTVTile__timeSpan', visible: :all
    element :itv_channel, '#live-tv-itv'
    element :itv2_channel, '#live-tv-itv2'
    element :itv3_channel, '#live-tv-itv3'
    element :itv4_channel, '#live-tv-itv4'
    element :itvbe_channel, '#live-tv-itvbe'
    element :citv_channel, '#live-tv-citv', visible: :all
    elements :channel_links, '.LiveTVTile.Link', visible: :all
    element :channel_logo, '.LiveTVTile__logoWrapper'
    element :focus, '.focus'
    sections :tiles, ::LiveTVSlider::Tile, '.LiveTVTile', visible: :all

    def channel_link(channel)
      channels = %w[itv itv2 itv3 itv4 citv itvbe]
      index = channels.find_index(channel)
      channel_links[index]
    end

    def channel_tile_title_index(title)
      channel_tile = all_titles
      channel_tile.find_index(title)
    end

    def all_titles
      title.map(&:text)
    end
  end
end
