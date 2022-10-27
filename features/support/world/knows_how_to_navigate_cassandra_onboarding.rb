# frozen_string_literal: true

module KnowsHowToNavigateCassandraOnboarding
  def browse_button_has_focus?
    app.sign_in_onboarding.browse_button.focus?
  end

  def navigate_to_onboarding_browse_button(direction = :left)
    navigate_with_remote(direction, "navigate_to_onboarding_browse_button({ direction: #{direction.inspect} }): Could not give browse button focus") do
      browse_button_has_focus?
    end
  end
end

World(KnowsHowToNavigateCassandraOnboarding)
