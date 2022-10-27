# frozen_string_literal: true

module KnowsHowToConfigureFeatureFlag
  def enable_feature_flag(feature_name)
    case feature_name
    when 'featuredSliderSlot1'
      cassandra.features.set({targetedContainers: { enabled: true, featured: { feature_name.to_s => true }}})
    else
      cassandra.features.set({feature_name.to_s => true})
    end
  end

  def disable_feature_flag(feature_name)
    case feature_name
    when 'featuredSliderSlot1'
      cassandra.features.set({targetedContainers: { enabled: true, featured: { feature_name.to_s => false }}})
    else
      cassandra.features.set({feature_name.to_s => false})
    end
  end
end

World(KnowsHowToConfigureFeatureFlag)
