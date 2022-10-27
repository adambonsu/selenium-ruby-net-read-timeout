# frozen_string_literal: true

module SimulcastPlayer
  class ChannelTiles < SitePrism::Section
    element :title_element, '.LiveTVTile__title', visible: :all
    element :time_span_element, '.LiveTVTile__timeSpan', visible: :all
    element :tile, '.LiveTVTile Link'

    def channel
      channel_id[/live-tv-(.*)$/, 1]
    end

    def channel_id
      native[:id]
    end

    def title
      title_element.text
    end

    def time_span
      time_span_element.text
    end
  end
end
