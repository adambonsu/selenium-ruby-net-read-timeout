# frozen_string_literal: true

require_relative 'vod_metadata'

module Player
  class VodControlsRow < SitePrism::Section
    section :vod_metadata, Player::VodMetadata, '.VodMetadata'
  end
end
