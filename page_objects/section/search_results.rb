# frozen_string_literal: true

require_relative 'search_slider'

module Base
  class SearchResults < SitePrism::Section
    element :header, '.SearchResults__header'
    section :search_slider, Base::SearchSlider, '.SearchSlider'
  end
end
