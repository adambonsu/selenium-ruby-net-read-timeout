# frozen_string_literal: true

module KnowsHowToNavigateCassandraPlayerParentalControls
  def dismiss_parental_controls_prompt
    return unless app.parental_controls.has_overlay?(wait: false)

    option_with_focus = app.parental_controls.overlay.options.find(&:focus?).text
    case option_with_focus
    when 'Watch now'
      remote :enter
    when 'Cancel'
      remote :left
      remote :enter
    end
  end

  def provide_pin_at_parental_controls_prompt(pin)
    return unless app.parental_controls.has_overlay? wait: false

    app.parental_controls.overlay.keyboard.enter_text(pin)
  end

  def video_player_loaded?
    app.player.has_video?(wait: false)
  end

  def wait_for_video_to_play_dismiss_parental_controls_dialog_if_displayed(timeout = 60)
    time_limit = Time.now + timeout
    loop do
      break if video_player_loaded? || Time.now >= time_limit

      dismiss_parental_controls_prompt
    end

    eventually { expect(app.player.video).to be_playing }
  end

  def wait_for_video_to_play_provide_pin_if_parental_controls_dialog_if_displayed(pin, timeout = 60)
    time_limit = Time.now + timeout
    loop do
      break if video_player_loaded? || Time.now >= time_limit

      provide_pin_at_parental_controls_prompt(pin)
    end
    eventually { expect(app.player.video).to be_playing }
  end
end

World(KnowsHowToNavigateCassandraPlayerParentalControls)
