# frozen_string_literal: true

require_relative '../slider'

module Homepage
  class NewsSlider < SitePrism::Section
    set_default_search_arguments '#newsShortFormFeedRow'

    # TODO: revisit when news video page is implemented
    elements :tile_links, 'li a', visible: :all

    def data
      @data ||= JSON.parse(HTTParty.get('https://discoverystub:5678/news/homepage', verify: false).body)
    end

    def data_ids
      @data_ids ||= data.map { |clip| clip['clipCCId'] }
    end

    def expected_links
      data.map do |clip|
        %(#{clip['title'].downcase.tr("':?", '').gsub('£', 'pound').tr(' ', '-')}/#{clip['clipCCId']})
      end
    end

    def actual_links
      tile_links.map { |anchor| anchor['href'].sub(/^#{Capybara.current_url[%r{.*/}]}/, '') }
    end

    def tile_in_focus
      tile_links.find(&:focus?)
    end
  end
end
