# frozen_string_literal: true

module KnowsHowToEnrichPromotedFeed
  def enrich_programmes_for_most_popular(programmes)
    enriched_programmes = programmes.map(&:clone)
    enriched_programmes.each do |programme|
      raise ArgumentError, "KnowsHowToEnrichPromotedFeed::enrich_programmes_for_most_popular(): programme['productionId'] missing" unless programme['productionId']

      programme['categories'] = enriched_categories(programme)
      programme['channel'] = enriched_programme_channel(programme)
      programme['duration'] = enriched_duration(programme)
      programme['durationIso8601Format'] = enriched_duration_iso8601_format(programme)
      programme['episodeId'] = enriched_episode_id(programme, programme['productionId'])
      programme['productionCount'] = enriched_production_count(programme)
      programme['productionType'] = enriched_production_type(programme)
      programme['productionSynopsisNinety'] = enriched_production_synopsis_ninety(programme)
      programme['productionSynopsisEpg'] = enriched_production_synopsis_epg(programme)
      programme['programmeId'] = enriched_programme_id(programme)
    end
  end

  def enrich_promotions_for_most_popular(promotions)
    promotions.map(&:clone).each do |promotion|
      promotion['title'] = enriched_title(promotion)
      promotion['subtitle'] = enriched_subtitle(promotion)
      promotion['image'] = enriched_image(promotion)
      promotion['type'] = enriched_type(promotion)
      promotion['channel'] = {
          'name' => enriched_channel_name(promotion),
          'strapline' => enriched_channel_strapline(promotion)
      }
      production_id = enriched_promotion_production_id(promotion)
      promotion['production'] = {
          'productionId' => production_id,
          'productionType' => enriched_production_type(promotion['production']),
          'nextProductionId' => enriched_production_next_production_id(promotion['nextProductionId'], production_id),
          'episodeId' => enriched_episode_id(promotion['production'], production_id),
          'duration' => { 'iso8601' => enriched_duration_iso8601(promotion['production']), 'display' => enriched_duration_display(promotion['production']) },
          'broadcastDateTime' => { 'commissioning' => enriched_broadcast_date_time_commissioning(promotion['production']), 'original' => enriched_broadcast_date_time_original(promotion['production'])},
          'synopses' => { 'ninety' => enriched_promotion_production_synopses_ninety(promotion['production']), 'epg' => enriched_promotion_production_synopses_epg(promotion['production']) },
          'visuallySigned' => enriched_promotion_production_visually_signed(promotion['production']),
          'programme' => {
              'id' => enriched_promotion_production_programme_id(promotion['production'], production_id),
              'title' => enriched_promotion_production_programme_title(promotion),
              'synopses' => { 'ninety' => enriched_promotion_production_programme_synopses_ninety(promotion), 'epg' => enriched_promotion_production_programme_synopses_epg(promotion) }
          },
          'categories' => enriched_categories(promotion)
      }
      promotion['production']['series'] = enrich_promotion_production_series(promotion['series']) if promotion['series']
      promotion['production']['episode'] = enrich_promotion_production_episode(promotion['episode']) if promotion['episode']
      promotion['production']['guidance'] = promotion['guidance'] if promotion['guidance']
    end
  end

  def enriched_production_next_production_id(next_production_id, production_id)
    next_production_id || generate_next_production_id_from(production_id)
  end

  def generate_next_production_id_from(production_id)
    episode_id, tag = production_id.split('#')
    episode_id1, episode_id2, episode_counter = episode_id.split('/')
    next_episode_counter = (episode_counter.to_i + 1).to_s.rjust(episode_counter.size, '0')
    "#{episode_id1}/#{episode_id2}/#{next_episode_counter}##{tag}"
  end

  def enrich_promotion_production_episode(episode)
    episode.to_i
  end

  def enrich_promotion_production_series(series)
    series.to_i
  end

  def enriched_channel_name(promotion)
    promotion&.try(:[], 'channel') || 'ITV'
  end

  def enriched_channel_strapline(promotion)
    promotion&.try(:[], 'channel')&.try(:[], 'strapline') || 'TV. And then some.'
  end

  def enriched_promotion_production_visually_signed(production)
    production&.try(:[], 'visuallySigned') || false
  end

  def enriched_promotion_production_programme_id(production, production_id)
    production&.try(:[], 'programme')&.try(:[], 'id') || production_id[%r{(\w+)/(\w+)}]
  end

  def enriched_promotion_production_programme_title(promotion)
    promotion&.try(:[], 'production')&.try(:[], 'programme')&.try(:[], 'title') || promotion['title']
  end

  def enriched_promotion_production_programme_synopses_ninety(promotion)
    promotion&.try(:[], 'production')&.try(:[], 'programme')&.try(:[], 'synopses')&.try(:[], 'ninety') || "Short synopses, shouldn't appear in the UI"
  end

  def enriched_promotion_production_programme_synopses_epg(promotion)
    promotion&.try(:[], 'production')&.try(:[], 'programme')&.try(:[], 'synopses')&.try(:[], 'epg') || "synopses, shouldn't appear in the UI"
  end

  def enriched_title(promotion)
    promotion['title'] || promotion['programmeTitle']
  end

  def enriched_subtitle(promotion)
    promotion&.try(:[], 'subtitle') || 'Catch Up'
  end

  def enriched_image(promotion)
    promotion&.try(:[], 'image') || 'https://hubimages.itv.com/promotional/123abc?format=jpg'
  end

  def enriched_type(promotion)
    promotion&.try(:[], 'type') || 'catchup'
  end

  def enriched_broadcast_date_time_commissioning(production)
    production&.try(:[], 'broadcastDateTime')&.try(:[], 'commissioning') || local_datetime_days_ago_to_utc_datetime(days: 0)
  end

  def enriched_broadcast_date_time_original(production)
    production&.try(:[], 'broadcastDateTime')&.try(:[], 'original') || '2018-08-14T22:00Z'
  end

  def enriched_promotion_production_synopses_ninety(production)
    production&.try(:[], 'synopses')&.try(:[], 'ninety') || "Short synopsis, shouldn't appear in the UI"
  end

  def enriched_promotion_production_synopses_epg(production)
    production&.try(:[], 'synopses')&.try(:[], 'epg') || "EPG synopsis, shouldn't appear in the UI"
  end

  def enriched_categories(programme)
    programme&.try(:[], 'categories') ? programme&.try(:[], 'categories')&.split(',')&.map { |category| { 'name' => category } } : ['Entertainment']
  end

  def enriched_programme_channel(programme)
    programme&.try(:[], 'channel') || 'ITV'
  end

  def enriched_duration(programme)
    programme&.try(:[], 'duration') || '30 mins'
  end

  def enriched_duration_display(programme)
    programme&.try(:[], 'duration')&.try(:[], 'display') || '30 mins'
  end

  def enriched_duration_iso8601(programme)
    programme&.try(:[], 'duration')&.try(:[], 'iso8601') || 'PT30M'
  end

  def enriched_duration_iso8601_format(programme)
    programme&.try(:[], 'durationIso8601Format') || 'PT30M'
  end

  def enriched_episode_id(production, production_id)
    production&.try(:[], 'episodeId') || production_id[/[^#]+/]
  end

  def enriched_production_count(programme)
    programme&.try(:[], 'productionCount') || 10
  end

  def enriched_promotion_production_id(promotion)
    promotion&.try(:[], 'production')&.try(:[], 'productionId') || promotion['productionId']
  end

  def enriched_production_type(programme)
    programme&.try(:[], 'productionType') || 'PROGRAMME'
  end

  def enriched_production_synopsis_ninety(programme)
    programme&.try(:[], 'productionSynopsisNinety') || 'Production Synopsis Ninety'
  end

  def enriched_production_synopsis_epg(programme)
    programme&.try(:[], 'productionSynopsisEpg') || 'Production Synopsis Epg'
  end

  def enriched_programme_id(programme)
    programme&.try(:[], 'programmeId') || programme['productionId'][%r{(\w+)/(\w+)}]
  end
end

World(KnowsHowToEnrichPromotedFeed)
