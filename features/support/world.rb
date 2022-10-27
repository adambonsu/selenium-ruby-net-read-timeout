# frozen_string_literal: true

module TestWorld
  def app
    App.new
  end
end

World(TestWorld)
