# frozen_string_literal: true

require_relative 'slider'

module Base
  class ContinueWatchingSlider < Base::Slider
    sections :tiles, Base::Tile, '.ContinueWatchingTile', visible: :all
    element :title, '.cp_basic-tile__title'
  end
end
