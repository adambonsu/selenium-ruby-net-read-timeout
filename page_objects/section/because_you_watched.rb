# frozen_string_literal: true

require_relative 'slider'

module Base
  class BecauseYouWatchedSlider < Base::Slider
    elements :tile, 'a[class="ProgrammeTile Link focus"]'
  end
end
