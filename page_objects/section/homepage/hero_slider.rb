# frozen_string_literal: true

require_relative './hero_slider_tile'

module Homepage
  class HeroSlider < SitePrism::Section
    sections :tiles, ::Homepage::HeroSliderTile, '.HeroTile'
  end
end
