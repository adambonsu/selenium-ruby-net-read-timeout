# frozen_string_literal: true

module KnowsHowToNavigateTheOnwardJourney
  def onward_journey_countdown
    app.vod_player.onward_journey.countdown
  end

  def onward_journey_countdown_in_seconds
    onward_journey_countdown.match(/\d+/).to_s.to_i
  end

  def onward_journey_displayed?
    app.vod_player.has_onward_journey? wait: false
  end

  def onward_journey_focused?
    app.vod_player.onward_journey.focus?
  end

  def onward_journey_next_episode
    app.vod_player.onward_journey.next_episode
  end
end

World(KnowsHowToNavigateTheOnwardJourney)
