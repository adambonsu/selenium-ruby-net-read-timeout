# frozen_string_literal: true

module Base
  class MostPopular < SitePrism::Section
    elements :tiles, '.ProgrammeTile'
  end
end
