# frozen_string_literal: true

module KnowsHowToNavigateProfiling
  def navigate_down_to_profile_keyboard_dialog_buttons
    eventually do
      remote :down until app.profiles.profile_keyboard.dialog_buttons.first.focus?
    end
    remote :down until app.profiles.profile_keyboard.dialog_buttons.first.focus?
  end

  def give_focus_to_profile_onboarding_screen_button(button)
    current_focus_button = app.home.profile_onboarding_screen.onboarding_buttons.find(&:focus?).text
    current_focus_button_index = app.home.profile_onboarding_screen.onboarding_buttons_index(current_focus_button)
    desired_button_index = app.home.profile_onboarding_screen.onboarding_buttons_index(button)
    if current_focus_button_index > desired_button_index
      remote :left
    elsif current_focus_button_index < desired_button_index
      remote :right
    end
    expect(current_focus_button == button)
  end

  def create_profile_from_keyboard(input)
    app.current_page.profile_keyboard.keyboard_section.enter_text(input)
    remote :down until app.profiles.profile_keyboard.cancel.focus?
    remote :right
    expect(app.profiles.profile_keyboard.create.focus?)
    remote :enter
  end

  def bypass_parental_controls
    step "I click on the 'Not now' button"
  end

  def navigate_to_button_on_edit_profile_page(button)
    if (button.include? 'delete') && (app.profiles_edit.header_buttons.index(&:focus?) == 0)
      remote :right
    elsif (button.include? 'create') && (app.profiles_edit.header_buttons.index(&:focus?) == 1)
      remote :left
    end
  end

  def navigate_delete_profile_overlay(button)
    remote :down until app.profiles_edit.delete_profile_overlay.option_buttons.find(&:focus?)
    expect(app.profiles_edit.delete_profile_overlay.cancel_button.focus?).to be(true)
    remote :right unless button == 'cancel'
  end
end

World(KnowsHowToNavigateProfiling)
