# frozen_string_literal: true

module KnowsHowToEnrichSliderFeed
  def enrich_title_treatment(sliders)
    enriched_sliders = sliders.map(&:clone)
    enriched_sliders.each do |slider|
      slider['imageTreatment'] = slider&.try(:[], 'imageTreatment') || '30 mins'
      slider['imageAspectRatio'] = slider&.try(:[], 'imageAspectRatio') || '30 mins'
      slider['imageClass'] = slider&.try(:[], 'imageClass') || 'landscape'
    end
  end
end

World(KnowsHowToEnrichSliderFeed)
