# frozen_string_literal: true

require_relative 'slider'

module Base
  class MyListSlider < Base::Slider
    elements :tile, 'a[class=ProgrammeTile Link focus]'
  end
end
