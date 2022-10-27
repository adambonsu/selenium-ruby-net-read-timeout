# frozen_string_literal: true

module KnowsHowToNavigateCassandraSimulcast
  def navigate_to_home_from_simulcast
    remote :down until app.simulcast_player.home_button.focus?
    remote :enter
  end
end

World(KnowsHowToNavigateCassandraSimulcast)
