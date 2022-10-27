# frozen_string_literal: true

require_relative '../slider'

module Player
  class MoreEpisodesSlider < Base::Slider
    sections :tiles, Base::Tile, '.EpisodeTile'
  end
end
