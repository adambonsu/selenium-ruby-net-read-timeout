# frozen_string_literal: true

require_relative 'knows_how_to_use_remote'

module KnowsHowToNavigateCassandra
  def navigate_down_to_slider(heading)
    eventually(polling_interval: 0.2) do
      break if app.current_page&.slider_with_focus&.heading == heading

      remote :down
      expect(app.current_page&.slider_with_focus&.heading).to eq heading
    end
  end

  def give_focus_to_option_via_side_nav(option)
    give_side_nav_focus
    # if app.current_page.side_nav.options.profile_label_element.visible?
    #   app.current_page.side_nav.options.profile_label_element.text.to_a
    # end
    position_of_desired_option = app.current_page.side_nav.options.map(&:label).find_index(option)
    raise "give_focus_to_option_via_side_nav(#{option}): Could not find #{option} in side nav: #{app.current_page.side_nav.options.map(&:label)}" if position_of_desired_option.nil?

    direction = current_position_in_side_nav > position_of_desired_option ? :up : :down
    remote direction until app.current_page.side_nav.option_with_focus == option
  end

  def give_side_nav_focus(direction = :left)
    navigate_with_remote(direction, "give_side_nav_focus({ direction: #{direction.inspect} }): Could not give side nav focus") do
      side_nav_focus?
    end
  end

  def side_nav_focus?
    app.current_page.has_side_nav?(wait: false) && app.current_page&.side_nav&.focus?
  end

  def sub_nav_focus?
    app.current_page.has_sub_nav?(wait: false) && app.current_page&.sub_nav&.focus?
  end

  def give_sub_nav_focus
    navigate_with_remote(:right, 'give_sub_nav_focus(): Failed to give sub nav focus by navigating :right') do
      sub_nav_focus?
    end
  end

  def give_focus_to_option_via_sub_nav(option)
    # to do: sub_nav options to return elements instead of list of labels
    # refactor give_focus_to_option_via_side_nav() and give_focus_to_option_via_sub_nav() to use same method?
    eventually do
      position_of_desired_option = app.current_page.sub_nav.options.map(&:downcase).find_index(option.downcase)
      direction = current_position_in_sub_nav > position_of_desired_option ? :up : :down
      remote direction until current_position_in_sub_nav == position_of_desired_option
    end
  end

  def current_position_in_sub_nav
    app.current_page.sub_nav.options.find_index(app.current_page.sub_nav.option_with_focus)
  end

  def current_position_in_side_nav
    app.current_page.side_nav.options.map(&:label).find_index(app.current_page.side_nav.option_with_focus)
  end

  def select_button_with_focus(label)
    eventually(timeout: 2, polling_interval: 0.2) { expect(app.current_page.button_focus).to have_text label }
    remote :enter
  end

  def select_option_via_side_nav(option)
    give_focus_to_option_via_side_nav(option)
    remote :enter
  end

  def wait_for_sub_nav_to_have_focus
    eventually(timeout: 2, polling_interval: 0.2) { expect(sub_nav_focus?).to be(true) }
  end

  def select_option_via_sub_nav(option)
    wait_for_sub_nav_to_have_focus
    give_focus_to_option_via_sub_nav(option)
    remote :enter
  end

  def programme_in_focus
    if page_has_tiles?
      app.current_page.tiles.find(&:focus?)
    elsif page_has_sliders?
      app.current_page.slider_with_focus.tiles.find(&:focus?)
    end
  end

  def kids_programme_in_focus
    app.home.kids_content_grid.tiles.find(&:focus?)
  end

  def page_has_tiles?
    app.current_page.respond_to?(:tiles) && app.current_page.has_tiles?
  end

  def page_has_sliders?
    app.current_page.respond_to?(:sliders) && app.current_page.slider_with_focus
  end

  def navigate_to_parental_controls
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'SETTINGS' }
    select_option_via_sub_nav 'Parental Controls'
  end

  def navigate_to_sign_in_page
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'SETTINGS' }
    select_option_via_sub_nav 'Sign In'
    remote :right while app.current_page.has_sub_nav? wait: false
  end

  def navigate_to_categories_page
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'CATEGORIES' }
  end

  def navigate_to_live_tv_page
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'LIVE TV' }
  end

  def navigate_to_search_page
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'SEARCH' }
  end

  def navigate_to_next_programme
    programme_in_focus_title = programme_in_focus.title
    remote :right
    next_programme_in_focus_title = programme_in_focus.title
    if next_programme_in_focus_title == programme_in_focus_title
      remote :down
      3.times { remote :left }
      next_programme_in_focus_title = programme_in_focus.title
    end
    next_programme_in_focus_title
  end

  def has_categories?
    app.categories.tiles.size.positive?
  end

  def navigate_from_nav_to_first_programme(direction = :right, timeout = 60)
    navigate_with_remote(direction, "navigate_from_nav_to_first_programme({ direction: #{direction.inspect}, timeout: #{timeout.inspect} }): Could not give programme focus") do
      sleep 0.5
      !programme_in_focus.nil?
    end
  end

  def navigate_to_programme_by_title(_programme_title)
    expect(has_categories?).to be(true)
    navigate_from_nav_to_first_programme
    # loop do
    #   programme_in_focus_title = programme_in_focus.title
    #   break if programme_in_focus_title == programme_title
    #
    #   next_programme_in_focus_title = navigate_to_next_programme
    #   raise "Could not find #{programme_title} in the #{app.current_page.sub_nav.option_with_focus} Category" if next_programme_in_focus_title == programme_in_focus_title
    # end
  end

  def navigate_to_kids_programme_via_homepage(programme_title)
    remote :right until app.home.kids_content_grid.focus?
    loop do
      programme_in_focus_title = kids_programme_in_focus.title
      break if programme_in_focus_title == programme_title

      next_programme_in_focus_title = navigate_to_next_programme
      raise "Could not find #{programme_title} in the #{app.current_page.sub_nav.option_with_focus} Category" if next_programme_in_focus_title == programme_in_focus_title
    end
  end

  def navigate_from_settings_sub_nav_to_home
    eventually(timeout: 2, polling_interval: 0.2) do
      remote :left
    end
    expect(app.current_page.side_nav.option_with_focus).to eq 'SETTINGS'
    eventually(timeout: 2, polling_interval: 0.2) do
      remote :up until app.current_page.side_nav.option_with_focus == 'HOME'
    end
    eventually { expect(app.current_page.side_nav.option_with_focus).to eq 'HOME' }
    remote :enter
  end

  def navigate_from_sign_in_on_boarding_via_pairing_code_to_home_page(account_type)
    eventually { expect(app.current_page.name).to eq 'SignInOnboarding' }
    eventually { expect(app.sign_in_onboarding.next_button.focus?).to be(true) }
    wait_for_page_to_load
    remote :enter
    eventually { expect(app.sign_in_onboard_pairing).to be_visible }
    UserHelper.config_test_user_for_pairing_code_sign_in(account_type)
    eventually { expect(app.home.button_focus.text).to eq 'Continue' }
    remote :enter
    check_kids_onboarding_screen
  end

  def navigate_up_to_top_editorial_slider
    eventually { expect(home_loaded?).to be(true) }
    loop do
      break if app.home.editorial_rail_slot1_has_focus?

      remote :up
    end
    eventually(polling_interval: 0.5) { expect(app.home.editorial_rail_slot1.focus?).to be(true) }
  end

  def select_not_to_create_profile
    eventually { expect(app.home.profile_onboarding_screen).to be_visible }
    remote :left until app.home.profile_onboarding_screen.not_now_button.focus?
    remote :enter
    eventually { expect(home_loaded?).to be(true) }
  end
end

World(KnowsHowToNavigateCassandra)
