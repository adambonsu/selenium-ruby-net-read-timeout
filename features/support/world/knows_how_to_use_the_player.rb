# frozen_string_literal: true

module KnowsHowToUseThePlayer
  def fast_forward_button_has_focus?
    app.player.overlay.fast_forward_button.focus?
  end

  def give_episode_focus_via_more_episodes_panel(episode_title)
    wake_up_more_episodes_panel
    navigate_to_episode_via_more_episode_panel episode_title
  end

  def give_episode_with_tag_focus(tag)
    navigate_with_remote(:down, "give_episode_with_tag_focus(tag: #{tag.inspect}): Failed to give episode with #{tag.inspect} focus by navigating :down") do
      more_episode_tile_with_focus.tags.include?(tag)
    end
  end

  def wake_up_more_episodes_panel
    navigate_with_remote(:down, 'wake_up_more_episodes_panel(): Failed to wake up episodes panel by navigating :down') do
      !more_episode_tile_with_focus.nil?
    end
  end

  def more_episode_tile_with_focus
    app.player.overlay.more_episodes_slider.tiles.find(&:focus?)
  end

  def navigate_to_episode_via_more_episode_panel(episode_title)
    navigate_with_remote(:right, "navigate_to_episode_via_more_episode_panel(episode_title: #{episode_title.inspect}): Failed to navigate to more episode tile with title #{episode_title.inspect} by navigating :right") do
      eventually { expect(more_episode_tile_with_focus).not_to be_nil }
      more_episode_tile_with_focus.title == episode_title
    end
  end

  def load_player_with_programme_via_categories(programme_title, category)
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'CATEGORIES' }
    select_option_via_sub_nav category
    navigate_to_programme_by_title programme_title
    remote :enter
    eventually { expect(app.programme).to be_displayed }
    eventually { expect(app.programme.cta.focus?).to be(true) }
  end

  def load_kids_programme_via_homepage(programme_title)
    navigate_to_kids_programme_via_homepage programme_title
    remote :enter
    eventually { expect(app.programme).to be_displayed }
    eventually { expect(app.programme.cta.focus?).to be(true) }
  end

  def navigate_to_play_pause_from_rewind_button
    navigate_with_remote(:right, 'Failed to give play-pause option focus in overlay after navigating :right') do
      app.player.overlay.play_pause_button.focus?
    end
  end

  def navigate_to_fast_forward_from_play_pause_button
    expect(app.player.overlay.play_pause_button.focus?).to be(true)
    navigate_with_remote(:right, 'navigate_to_fast_forward_from_play_pause_button(): Failed to give fast forward button focus by navigating :right') do
      app.player.overlay.fast_forward_button.focus?
    end
  end

  def navigate_to_play_pause_from_fast_forward_button(timeout = 60)
    eventually { expect(app.player.overlay.fast_forward_button.focus?).to be(true) }
    time_limit = Time.now + timeout
    loop do
      break if app.player.overlay.play_pause_button.focus? || Time.now >= time_limit

      remote :left
    end
    eventually { expect(app.player.overlay.play_pause_button.focus?).to be(true) }
  end

  def navigate_to_rewind_from_play_pause_button
    expect(app.player.overlay.play_pause_button.focus?).to be(true)
    navigate_with_remote(:left, 'navigate_to_rewind_from_play_pause_button(): Failed to give rewind button focus by navigating :left') do
      app.player.overlay.rewind_button.focus?
    end
  end

  def player_overlay_visible?
    app.player.overlay.visible?
  end

  def player_time_remaining
    wake_up_player_overlay unless player_overlay_visible?
    app.player.time_remaining.text
  end

  def rewind_button_has_focus?
    app.player.overlay.rewind_button.focus?
  end

  def select_player_parental_controls_toggle
    eventually do
      wake_up_player_overlay unless player_overlay_visible?
      remote :right until app.player.overlay.parental_controls_button.focus?
    end
    remote :enter
  end

  def wake_up_player_overlay
    eventually(polling_interval: 0.2) do
      remote :right
      expect(player_overlay_visible?).to be(true)
    end
  end

  def wake_up_simulcast_player_overlay
    eventually(polling_interval: 0.2) do
      3.times { remote :down }
      expect(app.simulcast_player.overlay.visible?).to be(true)
    end
  end

  def wake_up_simulcast_player_scrub_bar_overlay
    eventually(polling_interval: 0.2) do
      remote :down
      expect(app.simulcast_player.overlay.visible?).to be(true)
    end
  end

  def wait_for_overlay_to_autohide
    eventually(timeout: 5) do
      expect(app.simulcast_player.overlay.visible?).to be(false)
    end
  end

  def press_watch_now
    # expect(app.parental_controls.overlay.confirm_button.text).to eq 'WATCH NOW'
    eventually { expect(app.parental_controls.overlay.confirm_button.focus?).to eq true }
    remote :enter
  end

  def hours_minutes_seconds_to_seconds(time_string_hhmmss)
    time_string_hhmmss.split(':').map(&:to_i).inject(0) { |a, b| (a * 60) + b }
  end

  def seconds_to_hh_mm_ss(time_in_seconds)
    Time.at(time_in_seconds).utc.strftime('%H:%M:%S')
  end

  def seek_to_time_remaining(point_in_time)
    navigate_to_fast_forward_from_play_pause_button
    remote :enter
    remote :enter
    remote :enter
    sleep 0.1 while hours_minutes_seconds_to_seconds(app.player.time_remaining.text) > hours_minutes_seconds_to_seconds(point_in_time)
    navigate_to_play_pause_from_fast_forward_button
    remote :enter
  end

  def fast_forward_x6_through_the_long_ad
    navigate_to_fast_forward_from_play_pause_button
    2.times do
      remote :enter
    end
    # TODO: to refactor once ET-135 is ready
    sleep 3
    navigate_to_play_pause_from_fast_forward_button
    remote :enter
    sleep 3
  end

  def rewind_x6_through_the_long_ad
    navigate_to_rewind_from_play_pause_button
    2.times do
      remote :enter
    end
    # TODO: to refactor once ET-135 is ready
    sleep 3
    navigate_to_play_pause_from_fast_forward_button
    remote :enter
    sleep 3
    log app.player.overlay.play_pause_button.focus?
  end
end

World(KnowsHowToUseThePlayer)
