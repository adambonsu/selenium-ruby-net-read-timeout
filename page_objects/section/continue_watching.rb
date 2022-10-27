# frozen_string_literal: true

module Base
  class ContinueWatchingSlider < Base::Slider
    element :title, '.cp_basic-tile__title'
    elements :broadcast_datetime, '.ContinueWatchingTile__date-time'
  end
end
