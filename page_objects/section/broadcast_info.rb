# frozen_string_literal: true

module Base
  class BroadcastInfo < SitePrism::Section
    element :channel_logo_element, '.ChannelLogo'
    element :episode_info, '.cp_episode-info'
    element :datetime, '.cp_date-time'
    element :information, '.BroadcastInfo__text'
    element :series_episode, '.cp_episode-info'

    def channel
      channel_logo[/ChannelLogo--(.*)$/, 1]
    end

    def channel_logo
      channel_logo_element.native[:class].split.find { |e| e =~ /ChannelLogo--/ }
    end
  end
end
