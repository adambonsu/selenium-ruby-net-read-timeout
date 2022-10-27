# frozen_string_literal: true

module KnowsHowToConfigureFeatureFlag
  def configure_genre_slider_slot(slot, status)
    case status
    when 'enabled'
      cassandra.features.set({targetedContainers: { enabled: true, genreSliders: { %(genreSliderSlot#{slot}) => true }}})
    when 'disabled'
      cassandra.features.set({targetedContainers: { enabled: true, genreSliders: { %(genreSliderSlot#{slot}) => false }}})
    end
  end
end

World(KnowsHowToConfigureFeatureFlag)
