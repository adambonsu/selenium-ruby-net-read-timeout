# frozen_string_literal: true

module Base
  class ProfilesEdit < Base::Global
    set_url '/profiles/edit'
    set_url_matcher %r{/profiles/edit}

    element :done_button, '.EditProfile__done-button'
    element :change_profile_name_button, '.header__user-details'
    element :delete_profile_button, '.header__delete-button'
    elements :header_buttons, '.header__details button'
    section :delete_profile_overlay, Base::DeleteProfileOverlay, '.DeleteProfileModal'
    section :change_profile_name_keyboard, Base::ProfileKeyboard, '#profile-controls-profile-keyboard'
  end

  def header_options
    header_buttons.map(&:text)
  end
end
