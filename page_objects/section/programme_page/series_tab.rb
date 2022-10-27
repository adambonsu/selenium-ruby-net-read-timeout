# frozen_string_literal: true

module ProgrammePage
  class SeriesTab < SitePrism::Section
    def label
      text
    end

    def selected?
      native[:class].match?(/selected/)
    end
  end
end
