# frozen_string_literal: true

module KnowsHowToNavigateCassandraProgrammePage
  def focus_on_episode_via_episode_list(episode_title, timeout = 60)
    time_limit = Time.now + timeout
    loop do
      break if episode_with_focus&.title == episode_title || Time.now >= time_limit

      remote :down
      eventually(polling_interval: 0.2, wait_afterwards: 0.5) { expect(programme_page_has_focus?).to be(true) }
    end
    eventually { expect(episode_with_focus&.title).to eq episode_title }
  end

  def episode_with_focus
    app.programme.episodes.find(&:focus?)
  end

  def programme_page_has_focus?
    letterbox_has_focus? || !episode_with_focus&.title.nil?
  end

  def programme_page_has_series_tabs?
    app.programme.has_series_tabs? wait: false
  end

  def programme_page_series_tab_with_focus
    app.programme.series_tabs.find(&:focus?) if programme_page_has_series_tabs?
  end

  def programme_page_series_tab_with_focus?
    !programme_page_series_tab_with_focus.nil? if programme_page_has_series_tabs?
  end

  def navigate_to_programme_page_series_tab(label, direction = :right)
    navigate_with_remote(direction, "navigate_to_programme_page_series_tab( label: #{label.inspect}, direction: #{direction.inspect}) Failed to give #{label} focus after navigating #{direction}") do
      programme_page_series_tab_with_focus.label == label
    end
  end

  def programme_page_cta_has_focus?
    !!(app.programme.has_cta? wait: false && app.programme.cta.focus?)
  end

  def programme_page_episode_with_focus
    app.programme.episodes.find(&:focus?) if app.programme.has_series_tabs?(wait: false)
  end

  def programme_page_slider_with_focus
    app.programme.slider_with_focus if app.programme.has_sliders?(wait: false)
  end

  def programme_page_loaded?
    !!(programme_page_cta_has_focus? || programme_page_series_tab_with_focus? || programme_page_episode_with_focus || programme_page_slider_with_focus)
  end

  def letterbox_has_focus?
    app.programme.has_letterbox? wait: false && app.programme.letterbox.focus?
  end

  def letterbox_cta_has_focus?
    app.programme.letterbox.has_cta? wait: false && app.programme.letterbox.cta.focus?
  end
end

World(KnowsHowToNavigateCassandraProgrammePage)
