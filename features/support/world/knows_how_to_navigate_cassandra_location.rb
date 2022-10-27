# frozen_string_literal: true

module KnowsHowToNavigateCassandraLocation
  def location_button_with_focus
    app.location.button_with_focus
  end

  def navigate_to_location_button(button, direction = :right)
    navigate_with_remote(direction, "navigate_to_location_button({ direction: #{direction.inspect} }): Could not give #{button.inspect} button focus") do
      location_button_with_focus&.text == button
    end
  end
end

World(KnowsHowToNavigateCassandraLocation)
