# frozen_string_literal: true

require_relative 'tile'

module Base
  class Slider < SitePrism::Section
    element :header_element, '.cp_slider__heading', visible: :all
    element :view_all, '.ViewAllTile', visible: :all
    sections :tiles, Base::Tile, '.ProgrammeTile', visible: :all

    def heading
      header_element.text if has_header_element? wait: false
    end

    def tile_with_focus
      tiles.find(&:focus?)
    end
  end

  class ProgrammePageCategorySlider < Slider
    sections :tiles, Base::Tile, '.CategoryTile', visible: :all
  end
end
