# frozen_string_literal: true

require_relative 'title_element'
module Base
  class Tile < SitePrism::Section
    section :title_element, Base::TitleElement, '.cp_basic-tile__title', visible: :all
    section :searched_term, Base::TitleElement, '.HighlightedTitle__marked', visible: :all
    element :channel_element, '.cp_basic-tile__channel'
    element :episode_count_element, '.cp_basic-tile__episode-count'
    elements :tag_elements, '.cp_tag'

    element :tile_focus, "a[class='SliderTile Link focus']", visible: :all
    element :standard_tile_footer, '.cp_tile__footer'
    element :low_meta_tile_footer, '.cp_tile__footer'
    element :promo_small_portrait_tile_footer, '.cp_tile__footer'
    element :promo_landscape_tile_footer, '.cp_tile__footer'
    element :promo_portrait_tile_footer, '.cp_tile__info'

    def channel
      channel_element.text
    end

    def episode_count
      episode_count_element.text
    end

    def tags
      tag_elements.map(&:text)
    end

    def title
      title_element.text
    end
  end
end
