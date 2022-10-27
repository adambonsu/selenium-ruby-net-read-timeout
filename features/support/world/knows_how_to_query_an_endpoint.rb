# frozen_string_literal: true

module KnowsHowToQueryAnEndpoint
  def request_search(query)
    response = HTTParty.get("#{Config.discovery_stub}/search?broadcaster=ITV&featureSet=hls,aes,progressive,inband-webvtt&platform=CTV&query=#{query}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to generate expired token !!! #{response.response}")
    text_search_results = JSON.parse(response.body)

    expected_titles = []

    text_search_results['results'].each do |item|
      expected_titles << case item['entityType']
                         when 'programme'
                           item['data']['programmeTitle'].downcase
                         when 'special'
                           item['data']['specialTitle'].downcase
                         else
                           item['data']['filmTitle'].downcase
                         end
    end
    expected_titles
  end
end

World(KnowsHowToQueryAnEndpoint)
