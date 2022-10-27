# frozen_string_literal: true

module Base
  class Programme < Base::Global
    set_url_matcher %r{programmes/.*(/[\w|\d]{11,15})?$}

    element :cta, '#playButtonId'
    section :episode_header, Base::EpisodeHeader, '#episode-header'
    element :full_series, '#full-series-label'

    sections :episodes, ProgrammePage::Episode, '.Episode'
    sections :series_tabs, ProgrammePage::SeriesTab, '#seriesTabs button'
    element :other_episodes, '#seriesButton-undefined'

    element :sponsorship_logo, '.cp_sponsorship'

    elements :episode_titles, '.Episode__title'
    section :letterbox, ProgrammePage::Letterbox, '#programmeLetterBox'

    element :sponsorship_logo, '.cp_sponsorship'
    element :hub_plus_banner, '#HubPlusBannerRow'
    element :slider_header, '.cp_slider__heading'
    sections :tiles, Base::Tile, '.CategoryTile'
    section :hero, Base::Letterbox, '#programmeLetterBox'
    section :category_slider, Base::ProgrammePageCategorySlider, "[data-testid='programmePageCatSlider']"
    sections :sliders, Base::Slider, '.Slider'

    element :invald_programme, '.NonExistentProgramme__title'
    element :homepage_button, '.Link__button'
    element :my_list_add, '#my-list-button-add'
    element :my_list_remove, '#my-list-button-remove'
    element :episode_title, '.Episode__title'
    elements :episode_subtitles, '.Episode__subtitle'

    def slider_with_focus
      sliders.find(&:focus?)
    end
  end
end
