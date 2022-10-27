# frozen_string_literal: true

require_relative 'slider'

module Base
  class EditorialSlider < Base::Slider
    element :slider_header, "[data-testid='tile-slider__header']"
    sections :tiles, Base::Tile, '.cp_tile-slider__list-item', visible: :all
  end

  def heading
    slider_header.text if has_slider_header? wait: false
  end

  def tile_with_focus
    tiles.find(&:focus?)
  end
end
