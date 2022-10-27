# frozen_string_literal: true

module LiveTVSlider
  class Tile < SitePrism::Section
    element :title_element, '.LiveTVTile__title'
    element :time_span_element, '.LiveTVTile__timeSpan', visible: :all

    def channel
      channel_id[/live-tv-(.*)$/, 1]
    end

    def channel_id
      native[:id]
    end

    def title
      title_element.text
    end

    def all_titles
      title.map(&:text)
    end

    def time_span
      time_span_element.text
    end

    def all_time_spans
      time_span.map(&:text)
    end
  end
end
