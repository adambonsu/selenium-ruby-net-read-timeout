# frozen_string_literal: true

require_relative 'slider'

module Base
  class FeaturedSlider < Base::Slider
    elements :tiles, '.ProgrammeTile', visible: :all
    element :view_all_tile, '.ViewAllTile'
    elements :portrait_tiles, '.ProgrammeTile--portrait', visible: :all
  end
end
