# frozen_string_literal: true

module Base
  class Profiles < Base::Global
    set_url '/profiles'
    set_url_matcher %r{/profiles}

    element :create_kids_profile, '.ProfileButton__button--plus'
    element :kids_profile, '#kidsProfilesButtonsFocusGroup button'
    section :profile_keyboard, Base::ProfileKeyboard, '.Takeover'
    section :search_keyboard, Base::Keyboard, '.SearchContent__keyboard-section'
    element :page_title, '.ProfilesScreen__header'
    elements :profile_label, '.ProfileButton__label'
    element :edit_profile, '#ProfilesEditButton'
    elements :edit_profile_icon, '.ProfilesScreen__edit-icon'
    elements :profile_button, '.ProfileButton__button'

    def options
      profile_label.map(&:text)
    end

    def option_with_focus
      option = profile_label.find(&:focus?)
      option&.text
    end
  end
end
