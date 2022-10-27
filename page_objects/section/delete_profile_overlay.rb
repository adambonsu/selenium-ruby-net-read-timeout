# frozen_string_literal: true

module Base
  class DeleteProfileOverlay < SitePrism::Section
    element :heading, '.DeleteProfileModal__heading'
    element :prompt, '.DeleteProfileModal__prompt'
    elements :option_buttons, '#deleteProfileModal button'
    element :cancel_button, '#deleteProfileModalCancelButton'
    element :delete_button, '#deleteProfileModalDeleteButton'
  end
end
