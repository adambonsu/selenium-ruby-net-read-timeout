# frozen_string_literal: true

module Homepage
  class Hero < SitePrism::Section
    element  :watch_button, '.Link__play-button'
    element :title, '.cp_hero__content__heading', visible: :all
    element :synopses, '.cp_hero__content__paragraph', visible: :all

    elements :hero_titles, '.cp_hero__content__heading', visible: :all
    elements :synopses, '.cp_hero__content__paragraph', visible: :all
    elements :carousel_indicators, '.cp_hero-slider__indicators', visible: :all

    element :active_hero, '.cp_hero-slider__item--active'
    element :active_play_episode, "a[class='Link__play-button Link']"
    element :active_carousel_indicator, '.cp_hero-slider__indicators--active'

    element :broadcast_info, '.cp_episode-info'
    element :channel_logo, '.cp_episode-info'
    element :image, '.Hero__image'
    element :mostpopular_hero, '.MostPopularHero'
    element :mostpopular_title, '.MostPopularHero__heading'
    element :mostpopular_tag, '.MostPopularHero__tag-list'
    element :mostpopular_desc, '.MostPopularHero__desc'
    element :promoted_hero, '.PromotedHero'
    element :promoted_title, '.PromotedHero__heading'
    element :tag, '.cp_tag'
    element :heading, '.HeroWrapper__heading'
    element :description, '.HeroWrapper__para'
    element :play_episode, '.heroButton'
  end
end
