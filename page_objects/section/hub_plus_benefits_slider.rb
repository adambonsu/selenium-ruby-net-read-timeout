# frozen_string_literal: true

module Base
  class HubPlusBenefitsSlider < SitePrism::Section
    element :first_tile,    "a[class='SliderTile Link focus']", visible: :all
    elements :tiles,        "a[class*='SliderTile']", visible: :all
    elements :tile_heading, "div[class='TileUpsell__content']", visible: :all
  end
end
