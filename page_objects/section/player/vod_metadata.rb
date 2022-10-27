# frozen_string_literal: true

module Player
  class VodMetadata < SitePrism::Section
    element :episode_info, '.cp_episode-info'
    element :series_episode_info, '.cp_series-hierarchy'
  end
end
