# frozen_string_literal: true

module KnowsHowToConfigurePlaylists
  def production_id_to_html(normalised_production_id)
    normalised_production_id.gsub('/', '_').gsub('#', '.')
  end

  def override_playlists_for(episodes)
    episodes.each do |episode|
      payload = {
          'playlist' => {
              'productionId' => episode['productionId'], 'video' => {
                  'duration' => episode['playlistDuration'],
                  'timecodes' => {
                      'startCredits' => {
                          'startTime' => '00:00:00:000',
                          'endTime' => '00:00:01:000',
                          'skippable' => true
                      },
                      'endCredits' => {
                          'startTime' => episode['endCreditsStartTime'],
                          'endTime' => episode['endCreditsEndTime'],
                          'skippable' => true
                      },
                      'Recap' => nil
                  }
              }
          }
      }
      override_response = HTTParty.post("#{Config.video_stub}/config/service/playlist?override=content", verify: false, body: payload.to_json, timeout: 10)
      override_response.code == 200 ? override_response.response : (abort "!!! Failed to configure custom override !!! #{override_response.response}")
    end
  end

  def configure_ad_break_to_playlist(ad_break)
    content_duration = @override_content_duration_to_6s ? '6s' : '10m'

    case ad_break
    when 'pre-roll'
      ad_break_pattern = 'l_n_n'
    when 'mid-roll'
      ad_break_pattern = 'n_l_n'
    when 'post-roll'
      ad_break_pattern = 'n_n_l'
    end

    body = { 'ad_break_pattern' => ad_break_pattern, 'content_duration' => content_duration }
    override_response = HTTParty.post("#{Config.discovery_stub}/config/service/platform?override=ad", verify: false, body: body.to_json, timeout: 10)
    override_response.code == 200 ? override_response.response : (abort "!!! Failed to configure custom override !!! #{override_response.response}")
  end
end

World(KnowsHowToConfigurePlaylists)
