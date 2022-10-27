# frozen_string_literal: true

# TODO: awaiting for more element id
module Base
  class CheckInbox < Base::Global
    element :title_element, 'h2'
    element :continue_button, '#OverlayButtons'

    def title
      title_element.text
    end
  end
end
