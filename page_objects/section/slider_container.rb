# frozen_string_literal: true

require_relative 'slider'

module Base
  class SliderContainer < Base::Slider
    elements :tiles, '.cp_tile-slider__list-item', visible: :all
    element :slider_header, "[data-testid='tile-slider__header']"
  end
end
