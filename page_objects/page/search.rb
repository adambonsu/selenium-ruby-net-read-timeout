# frozen_string_literal: true

require_relative '../section/keyboard'

module Base
  class Search < SitePrism::Page
    set_url '/search'
    set_url_matcher %r{/search}

    section :search_keyboard, Base::Keyboard, '.SearchContent__keyboard-section'
    section :search_results, Base::SearchResults, '.SearchResults'
    element :no_search_result, '.NoSearchResults'
    element :sponsorship_logo, '.cp_sponsorship'
  end
end
