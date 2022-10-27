# frozen_string_literal: true

require_relative '../section/letterbox'
require_relative '../section/tile'
require_relative '../section/categories/grid'

module Base
  class Categories < Base::Global
    set_url '/categories/{category}'
    set_url_matcher %r{/categories/*}

    section :letterbox, Base::Letterbox, '.Letterbox'
    sections :tiles, Base::Tile, '.ProgrammeTile'
    element :focused_row, '#categoryRow1 .focus'
    element :empty_category, '.CategoryEmpty'
    element :subnav_disabled, '.SubNav__link--disabled'
    element :go_back, '#categoryEmptyBackButton'

    # for new categories page
    element :title, '.CategoryContent__title'
    element :active_button, '.cp_tab__button--active'
    section :grid, Base::Grid, '#TileGrid'

    def type
      subnav_disabled.text
    end
  end
end
