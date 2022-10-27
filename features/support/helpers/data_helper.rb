# frozen_string_literal: true

class DataHelper
  def self.generate_last_watched_item(episode_number, series_number = nil)
    [
        {
            'episodeId' => '2/5470/0027',
            'programmeTitle' => 'Love Island: Australia',
            'imageLink' => 'https://hubimages.itv.com/episode/2_5470_0027?w={width}&h={height}&q={quality}&blur={blur}&bg={bg}',
            'percentageWatched' => 0.5,
            'broadcastDatetime' => (Time.now - (3600 * 24 * rand(5..60))).strftime('%FT%H:%M:%SZ').to_s,
            'episode' => episode_number,
            'series' => series_number,
            'availabilityEnd' => (Time.now + (3600 * 24 * rand(5..60))).strftime('%FT%H:%M:%SZ').to_s,
            'productionId' => '2/5470/0027#003',
            'viewedOn' => (Time.now - (3600 * 24)).strftime('%FT%H:%M:%SZ').to_s,
            'programmeId' => '2/5470'
        }
    ]
  end
end
