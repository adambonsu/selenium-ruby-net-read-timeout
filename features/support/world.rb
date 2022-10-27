# frozen_string_literal: true

require_relative './world/knows_how_to_navigate_cassandra' # To do: superfluous?

module TestWorld
  def app
    App.new
  end
end

World(TestWorld)
