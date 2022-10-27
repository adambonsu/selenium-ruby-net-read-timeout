# frozen_string_literal: true

module KnowsHowToNavigateCassandraHomepage
  def home_loaded?
    !!(app.home.slider_with_focus || app.home.hero.focus?) && app.home.focus?
  end

  def home_hero_has_focus?
    app.home.has_hero?(wait: false) && app.home.hero.focus?
  end

  def hero_has_focus?
    app.home.hero_has_focus?
  end

  def slider_has_focus?
    !app.home&.slider_with_focus.nil?
  end

  def hero_or_slider_have_focus?
    hero_has_focus? || slider_has_focus?
  end

  def navigate_down_to_slider_with_heading(heading)
    navigate_with_remote(:down, "navigate_down_to_slider_with_heading(heading: #{heading.inspect}): Failed to give Slider with [#{heading.inspect}] heading focus, after navigating down") do
      app.home&.slider_with_focus&.heading == heading
    end
  end

  def navigate_down_to_next_slider
    navigate_with_remote(:down, 'navigate_down_to_next_slider: Failed to find next slider after navigating down') do
      slider_has_focus?
    end
  end

  def navigate_down_to_next_grid
    navigate_with_remote(:down, 'navigate_down_to_next_grid: Failed to find next grid after navigating down') do
      grid_has_focus?
    end
  end

  def navigate_down_to_search_slider
    navigate_with_remote(:down, 'navigate_down_to_search_slider: Failed to find search slider after navigating down') do
      !app.search.search_results.search_slider.tiles.find(&:focus?).nil?
    end
  end

  def navigate_down_to_news_slider
    navigate_with_remote(:down, 'navigate_down_to_news_slider: Failed to give News Slider focus') do
      app.home&.news_slider&.focus?
    end
  end

  def scroll_to_end_of_focused_slider(direction, expected_count = nil, &block)
    count = navigate_with_remote(direction, 'scroll_to_end_of_focused_slider: failed to evaluate block to true', 60, 1, &block)
    expected_count && expect(count).to(eq(expected_count))
  end

  def tile_in_focus
    app.current_page&.slider_with_focus&.tile_with_focus
  end

  def tile_in_focus_has_title?(title)
    tile_in_focus.title == title
  end

  def navigate_across_slider_to_tile(tile_title, direction = :right)
    navigate_with_remote(direction, 'Failed to give kids programme focus after navigating :down') do
      tile_in_focus_has_title?(tile_title)
    end
  end

  def navigate_down_to_collection_slider_element(slider_element, timeout = 60)
    time_limit = Time.now + timeout
    loop do
      remote :down
      eventually(wait_afterwards: 0.5) { expect(hero_or_slider_have_focus?).to be(true) }
      break if app.home.send("#{slider_element}_has_focus?") || Time.now >= time_limit
    end
  end

  def slider_with_focus_view_all_option_displayed?
    app.current_page.slider_with_focus.has_view_all?(wait: false)
  end

  def slider_view_all_option_has_focus?
    slider_with_focus_view_all_option_displayed? ? app.current_page.slider_with_focus.view_all.focus? : false
  end

  def tile_has_focus?
    !tile_in_focus.nil?
  end

  def navigate_to_slider_view_all_option(direction = :right, timeout = 60)
    navigate_with_remote(direction, "navigate_to_slider_view_all_option(direction: #{direction.inspect}, timeout: #{timeout.inspect}): tile_has_focus?[#{tile_has_focus?.inspect}], slider_view_all_option_has_focus?[#{slider_view_all_option_has_focus?}]") do
      slider_view_all_option_has_focus?
    end
  end

  def slider_in_focus_has_one_of_these_headings?(slider_headings)
    app.home&.slider_with_focus && slider_headings.include?(app.home.slider_with_focus&.heading)
  end

  def navigate_down_to_group(slider_headings, timeout = 60)
    time_limit = Time.now + timeout
    loop do
      break if slider_in_focus_has_one_of_these_headings?(slider_headings) || Time.now >= time_limit

      remote :down
    end
    eventually { expect(slider_headings).to include(app.home.slider_with_focus.heading) }
  end

  def navigate_to_view_all_tile_in_slider
    navigate_with_remote(:right, 'navigate_to_view_all_tile_in_slider(): Failed to give View All Tile focus after navigating :right') do
      app.home&.slider_with_focus&.view_all&.focus?
    end
  end

  def navigate_to_bottom_of_homepage
    navigate_with_remote(:down, 'navigate_to_bottom_of_homepage(): Failed to navigate :down to the bottom of the homepage') do
      last_slider_has_focus?
    end
  end

  def navigate_to_first_tile_in_slider
    navigate_with_remote(:left, 'navigate_to_first_tile_in_slider(): Failed to navigate :left to the first tile in the slider') do
      first_tile_in_slider?
    end
  end

  def tile_with_focus_matches_title?(title)
    app.home.slider_with_focus&.tile_with_focus&.title == title
  end

  def navigate_to_title_in_slider(title)
    navigate_to_first_tile_in_slider
    while app.home.slider_with_focus&.tile_with_focus
      break if tile_with_focus_matches_title?(title)

      remote :right
    end
    expect(tile_with_focus_matches_title?(title)).to be(true)
  end

  private

  def first_tile_in_slider?
    home_slider_with_focus&.tile_with_focus&.title == home_slider_with_focus&.tiles&.first&.title
  end

  def last_slider_has_focus?
    home_slider_with_focus&.heading == app.home.sliders&.last&.heading
  end

  def home_slider_with_focus
    app.home&.slider_with_focus
  end

  def skip_entering_postcode
    eventually { expect(app.current_page.name).to eq 'OnboardingLocation' }
    remote :down until app.location.button_with_focus.text == 'SKIP'
    remote :enter
  end

  def skip_entering_postcode_confirmation
    expect(app.overlay_modal).to have_text('Not sure about entering your postcode?')
    expect(app.overlay_modal.option_with_focus).to eq 'SKIP'
    remote :enter
  end

  def navigate_to_just_browse_button
    eventually do
      remote :left
      expect(app.sign_in_onboarding.browse_button.focus?)
    end
  end

  def just_browse
    eventually { expect(app.current_page.name).to eq 'SignInOnboarding' }
    navigate_to_just_browse_button
    remote :enter
  end

  def navigate_to_channel(channel, timeout = 60)
    default_landing_channel = 'ITV1'
    expect(app.channels.channel_icon[:alt].downcase).to eq(default_landing_channel.downcase)
    expect(app.channels.watch_live.focus?).to be(true)
    time_limit = Time.now + timeout
    loop do
      break if app.channels.channel_icon[:alt].downcase == channel.downcase || Time.now >= time_limit

      remote :down
    end
  end
end

World(KnowsHowToNavigateCassandraHomepage)
