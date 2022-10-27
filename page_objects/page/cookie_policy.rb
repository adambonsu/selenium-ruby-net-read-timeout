# frozen_string_literal: true

module Base
  class CookiePolicy < Base::Global
    element :scroll_down_button, '#scrollDownButton'
    element :scroll_up_button, '#scrollUpButton'
    element :scroll_bar, '.ScrollBar'
  end
end
