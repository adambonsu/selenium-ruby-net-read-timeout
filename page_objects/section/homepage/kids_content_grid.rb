# frozen_string_literal: true

module Homepage
  class KidsContentGrid < SitePrism::Section
    sections :tiles, Base::Tile, '.ProgrammeTile'
  end
end
