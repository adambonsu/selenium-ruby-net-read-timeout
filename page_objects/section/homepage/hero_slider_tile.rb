# frozen_string_literal: true

module Homepage
  class HeroSliderTile < SitePrism::Section
    element :broadcast_series_episode, '.BroadcastInfo__series-episode'
    element :broadcast_datetime_element, "[data-testid='broadcast-info']"
    element :broadcast_series_episode_element, '.cp_episode-info__series-hierarchy'
    element :channel_logo_element, 'i.cp_icon__logo-itv2-mono-neg'
    element :description, '.HeroTile__desc'
    element :heading, '.HeroTile__heading'
    element :image, '.HeroTile__image'
    elements :tags, '.cp_tag-list__item'
    alias title heading
    alias subtitle description

    def broadcast_datetime
      has_broadcast_series_episode_element?(wait: false) ? broadcast_datetime_element.text.gsub(series_episode, '').strip : broadcast_datetime_element.text
    end

    def channel_logo
      channel_logo_element[:class][/cp_icon__logo-(.*)-mono-neg/, 1]
    end

    def series_episode
      broadcast_series_episode_element.text
    end
  end
end
