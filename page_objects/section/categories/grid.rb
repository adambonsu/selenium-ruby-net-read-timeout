# frozen_string_literal: true

module Base
  class Grid < SitePrism::Section
    sections :tiles, Base::Tile, '.ProgrammeTile'
  end

  def focus?
    !tiles.find(&:focus?).nil?
  end
end
