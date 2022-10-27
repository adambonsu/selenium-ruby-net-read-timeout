# frozen_string_literal: true

module KnowsHowToConfigureParentalControls
  def provide_pin(pin)
    # To do: app.parental_controls.overlay.keyboard.enter_text cannot handle '2985'
    app.parental_controls.overlay.keyboard.enter_text(pin)
  end

  def provide_security_answer(security_answer)
    app.parental_controls.overlay.keyboard.enter_text(security_answer)
  end

  def confirm_turn_on_parental_controls
    navigate_with_remote(:right, 'Failed to give confirm button focus in parental controls overlay modal after navigating :right') do
      app.parental_controls.overlay.confirm_button.focus?
    end
    remote :enter
  end

  def navigate_to_next_stage
    remote :down until app.parental_controls.overlay.options.find(&:focus?)
    navigate_with_remote(:right, 'Failed to give next button focus in parental controls overlay modal after navigating :right') do
      app.parental_controls.overlay.next_button.focus?
    end
    remote :enter
  end

  def turn_on_parental_controls(credentials)
    return unless app.parental_controls.state.text != 'ON'

    pin = credentials['PIN']
    security_answer = credentials['Security Answer']

    remote :right while app.current_page.has_sub_nav? wait: false

    expect(app.parental_controls.options.find(&:focus?).text).to eq 'Turn on'
    remote :enter
    provide_parental_controls_credentials(pin, security_answer)
  end

  def provide_parental_controls_credentials(pin, security_answer)
    provide_pin(pin)
    navigate_to_next_stage
    provide_security_answer(security_answer)
    navigate_to_next_stage
    confirm_turn_on_parental_controls
  end

  def provide_parental_controls_credentials_guidance_dialog(pin, security_answer)
    provide_pin(pin)
    navigate_to_next_stage
    provide_security_answer(security_answer)
    navigate_to_next_stage
  end

  def turn_off_parental_controls(pin)
    remote :right while app.current_page.has_sub_nav?
    expect(app.parental_controls.turn_off_button.focus?).to be(true)
    remote :enter
    provide_pin(pin)
  end

  def parental_controls_options_have_focus?
    app.parental_controls.options.find(&:focus?).nil? ? false : true
  end

  def parental_controls_option_has_focus?(option)
    app.parental_controls.options.find(&:focus?)&.text == option
  end

  def parental_controls_player_option_has_focus?(option)
    app.parental_controls.options.find(&:focus?)&.text == "PARENTAL CONTROLS #{option}"
  end

  def parental_control_option_with_focus
    app.parental_controls.options.find(&:focus?)&.text
  end

  def parental_controls_overlay_options_have_focus?
    app.parental_controls.overlay.options.map(&:text).include? app.parental_controls.overlay.button_with_focus
  end

  def parental_controls_overlay_option_has_focus?(option)
    app.parental_controls.overlay.options.find(&:focus?)&.text == option
  end

  def parental_controls_overlay_option_with_focus
    app.parental_controls.overlay.options.find(&:focus?)&.text
  end

  def navigate_down_to_parental_control_options
    eventually(polling_interval: 0.2) do
      break if parental_controls_options_have_focus?

      remote :down
      expect(parental_controls_options_have_focus?).to be(true)
    end
  end

  def navigate_down_to_parental_controls_overlay_options
    eventually(polling_interval: 0.2) do
      break if parental_controls_overlay_options_have_focus?

      remote :down
      expect(parental_controls_overlay_options_have_focus?).to be(true)
    end
  end

  def navigate_to_parental_controls_option_via_pin_entry_dialog(option)
    navigate_down_to_parental_controls_overlay_options
    eventually(polling_interval: 0.2) do
      break if parental_controls_overlay_option_has_focus?(option)

      current_position = app.parental_controls.overlay.options.map(&:text).find_index(parental_controls_overlay_option_with_focus)
      position_of_desired_option = app.parental_controls.overlay.options.map(&:text).find_index(option)
      direction = current_position > position_of_desired_option ? :left : :right
      remote direction
      expect(parental_controls_option_has_focus?(option)).to be(true)
    end
  end

  def navigate_to_parental_controls_option(option)
    navigate_down_to_parental_control_options

    eventually(polling_interval: 0.2) do
      break if parental_controls_option_has_focus?(option)

      current_position = app.parental_controls.options.map(&:text).find_index(parental_control_option_with_focus)
      position_of_desired_option = app.parental_controls.options.map(&:text).find_index(option)
      direction = current_position > position_of_desired_option ? :left : :right
      remote direction
      expect(parental_controls_option_has_focus?(option)).to be(true)
    end

    remote :enter
  end
end

World(KnowsHowToConfigureParentalControls)
