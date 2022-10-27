# frozen_string_literal: true

module KnowsHowToObtainMetadata
  def channel_slider_metadata
    metadata = { }
    loop do
      title = app.simulcast_player.channel_tiles.find(&:focus?).title
      time_span = app.simulcast_player.channel_tiles.find(&:focus?).time_span
      metadata[title] = time_span
      remote :right
      break unless app.simulcast_player.channel_tile_title_index(title) != app.simulcast_player.all_titles.size-1
    end
    metadata
  end

  def homepage_live_tv_slider_metadata
    metadata = {}
    loop do
      title = app.home.live_tv_slider.tiles.find(&:focus?).title
      time_span = app.home.live_tv_slider.tiles.find(&:focus?).time_span
      metadata[title] = time_span
      remote :right
      break unless app.home.live_tv_slider.channel_tile_title_index(title) != app.home.live_tv_slider.all_titles.size - 1
    end
    metadata
  end

  def kids_content_grid_titles
    i = 0
    titles = []
    loop do
      programme_in_focus_title = kids_programme_in_focus.title
      remote :right
      next_programme_in_focus_title = kids_programme_in_focus.title
      titles[i] = programme_in_focus_title
      i += 1

      # TODO: we need to update this part to to handle how we navigate through the the items.
      # The 3.times left only works if all grid contains 4 items, but if grid is less than 4, the final left takes us to the sub nav
      if next_programme_in_focus_title == programme_in_focus_title
        remote :down
        3.times { remote :left }
        next_programme_in_focus_title = kids_programme_in_focus.title
      end
      break if titles.include? next_programme_in_focus_title
    end
    titles
  end
end

World(KnowsHowToObtainMetadata)
