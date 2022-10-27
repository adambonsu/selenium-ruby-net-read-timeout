# frozen_string_literal: true

require_relative 'slider'

module Base
  class GenreSlider < Base::Slider
    elements :tiles, '.ProgrammeTile'
    element :view_all_tile, '.ViewAllTile'
  end
end
