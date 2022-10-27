# frozen_string_literal: true

require_relative '../section/categories/slider'
require_relative '../section/continue_watching_slider'
require_relative '../section/homepage/hero'
require_relative '../section/homepage/hero_slider'
require_relative '../section/slider'
require_relative '../section/sub_nav'
require_relative '../section/letterbox'
require_relative '../section/live_tv_slider'
require_relative '../section/profile_onboarding'
require_relative '../section/whos_watching'

module Base
  class Home < Base::Global
    set_url '/homepage'
    set_url_matcher %r{/homepage}

    element :body, 'body'
    element :banner_ad, "footer picture img[alt='An advert banner for ITV hub']"
    element :first_tile_on_upsell_slider, 'a#premium'
    element :homepage, '#homepage-content'
    element :premium_upsell_slider, '.PremiumSlider'
    element :viewall_letterbox, '.ViewAllLetterbox__heading'

    sections :category_sliders, ::Categories::Slider, '.CategorySliders .Slider'
    sections :sliders, Base::Slider, '.ScrollableContent__row'

    section :because_you_watched_slider, Base::BecauseYouWatchedSlider, '.Slider #BecauseYouWatchedSlider'
    section :continue_watching_slider, Base::ContinueWatchingSlider, '.Slider #ContinueWatchingSlider'

    section :editorial_rail_slot1, Base::EditorialSlider, '#editorial_rail_slot1Row', visible: :all
    section :editorial_rail_slot2, Base::EditorialSlider, '#editorial_rail_slot2Row', visible: :all
    section :editorial_rail_slot3, Base::EditorialSlider, '#editorial_rail_slot3Row', visible: :all
    section :editorial_rail_slot4, Base::EditorialSlider, '#editorial_rail_slot4Row', visible: :all
    section :editorial_rail_slot5, Base::EditorialSlider, '#editorial_rail_slot5Row', visible: :all
    section :editorial_rail_slot6, Base::EditorialSlider, '#editorial_rail_slot6Row', visible: :all
    section :editorial_rail_slot7, Base::EditorialSlider, '#editorial_rail_slot7Row', visible: :all
    section :editorial_rail_slot8, Base::EditorialSlider, '#editorial_rail_slot8Row', visible: :all
    section :editorial_rail_slot9, Base::EditorialSlider, '#editorial_rail_slot9Row', visible: :all
    section :editorial_rail_slot10, Base::EditorialSlider, '#editorial_rail_slot10Row', visible: :all
    section :editorial_rail_slot11, Base::EditorialSlider, '#editorial_rail_slot11Row', visible: :all
    section :editorial_rail_slot12, Base::EditorialSlider, '#editorial_rail_slot12Row', visible: :all
    section :editorial_rail_slot13, Base::EditorialSlider, '#editorial_rail_slot13Row', visible: :all
    section :editorial_rail_slot14, Base::EditorialSlider, '#editorial_rail_slot14Row', visible: :all
    section :editorial_rail_slot15, Base::EditorialSlider, '#editorial_rail_slot15Row', visible: :all
    section :editorial_rail_slot16, Base::EditorialSlider, '#editorial_rail_slot16Row', visible: :all
    section :editorial_rail_slot17, Base::EditorialSlider, '#editorial_rail_slot17Row', visible: :all
    section :editorial_rail_slot18, Base::EditorialSlider, '#editorial_rail_slot18Row', visible: :all
    section :editorial_rail_slot19, Base::EditorialSlider, '#editorial_rail_slot19Row', visible: :all

    section :hero, ::Homepage::Hero, '#homepage-content'
    section :hero_slider, ::Homepage::HeroSlider, '#HeroSlider'
    section :kids_content_grid, Homepage::KidsContentGrid, '.ChannelsGrid'
    section :letterbox, Base::Letterbox, '.Letterbox'
    section :live_tv_slider, Base::LiveTvSlider, '.Slider #LiveTVSlider'
    section :most_popular_slider, Base::Slider, '.Slider #MostPopularSlider'
    section :my_list_slider, Base::MyListSlider, '.Slider #MyListSlider'
    section :parental_controls_confirmation_overlay, Base::ParentalControlsOverlay, '#Confirmation__takeover'
    section :parental_controls_information_overlay, Base::ParentalControlsOverlay, '#ParentalControlsInformation__takeover'
    section :parental_controls_onboarding_overlay, Base::ParentalControlsOverlay, '#PinProtect__takeover'
    section :pin_overlay, Base::PinOverlay, '#PINEntry__takeover'
    section :profile_onboarding_screen, Base::ProfileOnboarding, '.KidsOnboarding'
    section :recommended_for_you_slider, Base::RecommendedForYouSlider, '.Slider #RecommendationsSlider'
    section :simulcast_letterbox, Base::Letterbox, '#simulcastLetterbox'
    section :whos_watching, Base::WhosWatching, '.ProfileSelection'
    section :news_slider, ::Homepage::NewsSlider

    def hero_has_focus?
      has_hero?(wait: false) && hero.focus?
    end

    def hero_slider_has_focus?
      has_hero_slider?(wait: false) && hero_slider.focus?
    end

    def editorial_rail_slot1_has_focus?
      has_editorial_rail_slot1?(wait: false) && editorial_rail_slot1.focus?
    end

    def editorial_rail_slot2_has_focus?
      has_editorial_rail_slot2?(wait: false) && editorial_rail_slot2.focus?
    end

    def editorial_rail_slot3_has_focus?
      has_editorial_rail_slot3?(wait: false) && editorial_rail_slot3.focus?
    end

    def editorial_rail_slot4_has_focus?
      has_editorial_rail_slot4?(wait: false) && editorial_rail_slot4.focus?
    end

    def editorial_rail_slot5_has_focus?
      has_editorial_rail_slot5?(wait: false) && editorial_rail_slot5.focus?
    end

    def editorial_rail_slot6_has_focus?
      has_editorial_rail_slot6?(wait: false) && editorial_rail_slot6.focus?
    end

    def editorial_rail_slot7_has_focus?
      has_editorial_rail_slot7?(wait: false) && editorial_rail_slot7.focus?
    end

    def editorial_rail_slot8_has_focus?
      has_editorial_rail_slot8?(wait: false) && editorial_rail_slot8.focus?
    end

    def editorial_rail_slot9_has_focus?
      has_editorial_rail_slot9?(wait: false) && editorial_rail_slot9.focus?
    end

    def editorial_rail_slot10_has_focus?
      has_editorial_rail_slot10?(wait: false) && editorial_rail_slot10.focus?
    end

    def editorial_rail_slot11_has_focus?
      has_editorial_rail_slot11?(wait: false) && editorial_rail_slot11.focus?
    end

    def editorial_rail_slot12_has_focus?
      has_editorial_rail_slot12?(wait: false) && editorial_rail_slot12.focus?
    end

    def editorial_rail_slot13_has_focus?
      has_editorial_rail_slot13?(wait: false) && editorial_rail_slot13.focus?
    end

    def editorial_rail_slot14_has_focus?
      has_editorial_rail_slot14?(wait: false) && editorial_rail_slot14.focus?
    end

    def editorial_rail_slot15_has_focus?
      has_editorial_rail_slot15?(wait: false) && editorial_rail_slot15.focus?
    end

    def editorial_rail_slot16_has_focus?
      has_editorial_rail_slot16?(wait: false) && editorial_rail_slot16.focus?
    end

    def editorial_rail_slot17_has_focus?
      has_editorial_rail_slot17?(wait: false) && editorial_rail_slot17.focus?
    end

    def editorial_rail_slot18_has_focus?
      has_editorial_rail_slot18?(wait: false) && editorial_rail_slot18.focus?
    end

    def editorial_rail_slot19_has_focus?
      has_editorial_rail_slot19?(wait: false) && editorial_rail_slot19.focus?
    end

    def editorial_slider_1_has_focus?
      has_editorial_slider_1?(wait: false) && editorial_slider_1.focus?
    end

    def slider_with_focus
      sliders&.find(&:focus?)
    rescue TypeError => e
      puts "slider_with_focus(): #{e.inspect}: sliders: #{sliders&.map(&:heading)}"
    end
  end
end
