# frozen_string_literal: true

module KnowsHowToNavigateCassandraWatchLive
  def select_watch_live_button
    navigate_with_remote(:right, 'select_watch_live_button() Failed to give app.channels.simulcast focus after navigating :right') do
      app.channels.simulcast.focus?
    end
  end

  def select_start_again_button
    navigate_with_remote(:right, 'select_start_again_button(): Failed to select start again button by navigating :right') do
      app.channels.start_again_button.focus?
    end
  end
end

World(KnowsHowToNavigateCassandraWatchLive)
