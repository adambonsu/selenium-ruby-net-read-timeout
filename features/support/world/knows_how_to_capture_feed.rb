# frozen_string_literal: true

module KnowsHowToCaptureFeed
  def capture_hero_feed_items
    @limit = 2
    @broadcaster = 'ITV'
    hero_query = ERB.new File.read 'query/hero_query.erb'
    @hero_query = ''
    @hero_query += hero_query.result binding
    encoded_graphql_query = CGI.escape(@hero_query)
    req = HTTP::Request.new("#{Config.discovery_stub}/discovery?query=#{encoded_graphql_query}")
    req.options =
      { headers:
          {
            'Content-Type' => 'application/json',
            'Accept' => 'application/json'
          } }
    response = req.get
    response.code == 200 ? response.body : (abort "Failed to config feed limit #{response.body}")
    response = JSON.parse(response.body)
    response['data']['targetedContainers'][0]['content']['collection']['items']
  end

  def expected_hero_titles_and_synopses
    items = capture_hero_feed_items
    expect(items.empty?).to be false
    expected_titles = []
    expected_descriptions = []

    items.each_with_index do |item, _index|
      case item['itemType']
      when 'TITLE'
        capture_hero_title_items(item, expected_titles, expected_descriptions)
      when 'SERIES'
        capture_hero_series_items(item, expected_titles, expected_descriptions)
      when 'BRAND'
        capture_hero_brand_items(item, expected_titles, expected_descriptions)
      end
    end
    [expected_titles, expected_descriptions]
  end

  def capture_hero_title_items(item, expected_titles, expected_descriptions)
    expected_titles << item['titleItem']['brand']['title'] if item['titleItem']['titleType'] == 'EPISODE'
    expected_titles << item['titleItem']['title'] if item['titleItem']['titleType'] == 'SPECIAL' || item['titleItem']['titleType'] == 'FILM'
    expected_descriptions << item['titleItem']['synopses']['ninety']
  end

  def capture_hero_series_items(item, expected_titles, expected_descriptions)
    expected_titles << item['seriesItem']['brand']['title']
    expected_descriptions << item['seriesItem']['synopses']['ninety']
  end

  def capture_hero_brand_items(item, expected_titles, expected_descriptions)
    expected_titles << item['brandItem']['title']
    expected_descriptions << item['brandItem']['synopses']['ninety']
  end

  def capture_sliders_feed
    @limit = 2
    sliders_query = ERB.new File.read 'query/sliders_query.erb'
    @sliders_query = ''
    @sliders_query += sliders_query.result binding
    encoded_graphql_query = CGI.escape(@sliders_query)
    headers = {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
    response = HTTParty.get("#{Config.discovery_stub}/discovery?query=#{encoded_graphql_query}", verify: false, headers: headers, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to capture slider feed !!! #{response.response}")
    JSON.parse(response.body)
  end

  def capture_slider_display_type(slot)
    feed = capture_sliders_feed
    feed['data']['targetedContainers'][slot-1]['displayType']
  end

  def slider1_items_empty?
    feed = capture_sliders_feed
    feed['data']['targetedContainers'][0]['content']['collection']['items'].empty?
  end

  def slider_items_count(slot)
    feed = capture_sliders_feed
    feed['data']['targetedContainers'][slot-1]['content']['collection']['items'].count
  end

  def slider_title(slot)
    feed = capture_sliders_feed
    feed['data']['targetedContainers'][slot-1]['content']['collection']['title'].strip
  end

  def capture_slider_item_info(slot, tile_type, tile_position)
    feed = capture_sliders_feed
    tile = feed['data']['targetedContainers'][slot-1]['content']['collection']['items'][tile_position]
    case tile['itemType']
    when 'BRAND'
      extract_slider_brand_item_info(tile, tile_type)
    when 'SERIES'
      extract_slider_series_item_info(tile, tile_type)
    when 'TITLE'
      extract_slider_title_item_info(tile, tile_type)
    end
  end

  def extract_slider_brand_item_info(tile, tile_type)
    expected_synopses = tile['brandItem']['synopses']['ninety'].strip
    expected_number_of_series = tile['brandItem']['numberOfAvailableSeries']
    # TODO: The tile info should be "Series x . synopses"
    expected_tile_info = "#{expected_number_of_series} Series" if tile_type == 'promo_small_portrait'
    expected_tile_info = "#{expected_number_of_series} Series • #{expected_synopses}" if %w[promo_landscape standard].include?(tile_type)
    expected_tile_info
  end

  def extract_slider_series_item_info(tile, _tile_type)
    expected_synopses = tile['seriesItem']['synopses']['ninety'].strip
    expected_series_number = tile['seriesItem']['seriesNumber']
    "Series #{expected_series_number} • #{expected_synopses}"
  end

  def extract_slider_title_item_info(tile, tile_type)
    expected_synopses = tile['titleItem']['synopses']['ninety'].strip
    if tile['titleItem']['categories'].include?('FILM')
      duration = tile['titleItem']['versions'][0]['duration']
      expected_first_tile_info = duration.delete_prefix('PT').gsub('H', 'H ').downcase
    else
      broadcast_date = tile['titleItem']['broadcastDateTime']
      expected_first_tile_info = Date.parse(broadcast_date).strftime('%a %d %b').gsub('Thu', 'Thur')
    end
    expected_tile_info = expected_first_tile_info if tile_type == 'low_meta'
    expected_tile_info = "#{expected_first_tile_info} • #{expected_synopses}" if %w[promo_landscape standard].include?(tile_type)
    # TODO: to confirm date format for broadcast date with past year
    # expected_tile_info = Date.parse(broadcast_date).strftime('%d %b %Y') if Date.parse(broadcast_date).strftime('%Y') < Date.today.year.to_s && ile_type == 'low_meta'
    # expected_tile_info = Date.parse(broadcast_date).strftime('%a %d %b') if Date.parse(broadcast_date).strftime('%Y') == Date.today.year.to_s && ile_type == 'low_meta'
    expected_tile_info
  end
end

World(KnowsHowToCaptureFeed)
