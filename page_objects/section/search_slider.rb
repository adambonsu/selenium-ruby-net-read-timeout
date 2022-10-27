# frozen_string_literal: true

require_relative 'tile'

module Base
  class SearchSlider < SitePrism::Section
    sections :tiles, Base::Tile, '.ProgrammeTile', visible: :all
  end
end
