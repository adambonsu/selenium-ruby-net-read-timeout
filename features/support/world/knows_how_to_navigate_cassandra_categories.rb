# frozen_string_literal: true

module KnowsHowToNavigateCassandraCategories
  def grid_has_focus?
    app.categories.grid.focus?
  end
end

World(KnowsHowToNavigateCassandraCategories)
