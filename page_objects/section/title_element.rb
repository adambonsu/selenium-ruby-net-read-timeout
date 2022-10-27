# frozen_string_literal: true

module Base
  class TitleElement < SitePrism::Section
    element :highlighted_text, '.HighlightedTitle__marked'
  end
end
