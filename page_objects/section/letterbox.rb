# frozen_string_literal: true

require_relative 'broadcast_info'

module Base
  class Letterbox < SitePrism::Section
    section :broadcast_info, Base::BroadcastInfo, '.BroadcastInfo'
    element :category_tag, '.Letterbox__tag'
    element :description, "[data-testid='description']"
    element :episode_count, '.BroadcastInfo__text'
    element :heading_element, '.Letterbox__heading'
    element :image, '.Letterbox__image'
    elements :options, 'button'
    element :tag_element, '.Letterbox__tag'

    # to do: move to live tv letterbox
    # Ask Devs for id/test id
    element :channel_backdrop_image, '.Letterbox__image'
    element :channel_logo, '.Letterbox__channel-logo'

    def channel
      broadcast_info.channel
    end

    def heading
      heading_element.text
    end

    def tag
      tag_element.text
    end
  end
end
