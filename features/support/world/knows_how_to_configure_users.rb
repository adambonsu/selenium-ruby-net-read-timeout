# frozen_string_literal: true

module KnowsHowToConfigureUsers
  def authenticate_user(username, password)
    headers = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
    }
    body = {
        'username' => username.to_s,
        'password' => password.to_s,
        'scope' => 'content',
        'grant_type' => 'password',
        'nonce' => 'abc123'
    }
    response = HTTParty.post("#{Config.usp_stub}/auth", verify: false, headers: headers, body: body.to_json, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to authenticate user !!! #{response.response}")
    response
  end

  def user_id(user)
    auth_response = JSON.parse(authenticate_user(user['username'], user['password']))
    access_token = auth_response['access_token']
    JWT.decode(access_token, nil, false).first['sub']
  end

  def enriched_image_link(episode)
    "http://hubimages.itv.com/episode/#{episode['productionId'].split('/')[0..2].join('_').split('#').first}?w={width}&h={height}&q={quality}&blur={blur}&bg={bg}"
  end

  def enriched_percentage_watched(episode)
    episode['percentageWatched'].to_f / 100
  end

  def enriched_broadcast_datetime(episode)
    episode['broadcastDatetime'].to_s.empty? ? (Time.now - (3600 * 24 * rand(5..60))).strftime('%FT%H:%M:%SZ').to_s : episode['broadcastDatetime']
  end

  def enriched_availability_end(episode)
    episode['availabilityEnd'].to_s.empty? ? (Time.now + (3600 * 24 * rand(5..60))).strftime('%FT%H:%M:%SZ').to_s : episode['availabilityEnd']
  end

  def enriched_viewed_on(episode)
    episode['viewedOn'].to_s.empty? ? (Time.now - (3600 * 24)).strftime('%FT%H:%M:%SZ').to_s : episode['viewedOn']
  end

  def enrich_episodes_for_last_watched(episodes)
    enriched_episodes = episodes.map(&:clone)
    enriched_episodes.each do |episode|
      episode['imageLink'] = enriched_image_link(episode)
      episode['percentageWatched'] = enriched_percentage_watched(episode)
      episode['broadcastDatetime'] = enriched_broadcast_datetime(episode)
      episode['availabilityEnd'] = enriched_availability_end(episode)
      episode['viewedOn'] = enriched_viewed_on(episode)
      episode['episodeNumber'] = episode['episode']
      episode['seriesNumber'] = episode['series']
    end
  end

  def configure_last_watched_for(user, episodes)
    body = {'lastwatched' => enrich_episodes_for_last_watched(episodes)}
    response = HTTParty.post("#{Config.usp_stub}/config/user/#{user['gui_id']}", verify: false, body: body.to_json, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure user's last watched item !!! #{response.response}")
  end

  def auth_user(user)
    JSON.parse(authenticate_user(user['username'], user['password']))
  end

  def user_access_token(user)
    auth_response = JSON.parse(authenticate_user(user['username'], user['password']))
    auth_response['access_token']
  end

  def user_refresh_token(user)
    auth_response = JSON.parse(authenticate_user(user['username'], user['password']))
    auth_response['refresh_token']
  end

  def generate_expired_token(user, token_type)
    response = HTTParty.post("#{Config.usp_stub}/config/user/#{user['gui_id']}/generate/token?type=#{token_type}&isExpired=true", verify: false, timeout: 10)
    response.code == 201 ? response.response : (abort "!!! Failed to generate expired token !!! #{response.response}")
    JSON.parse(response.body)
  end

  def reset_user_for_pairing_code
    response = HTTParty.get("#{Config.usp_stub}/reset_validated_user", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to reset validated user for pairing code !!! #{response.response}")
  end
end

World(KnowsHowToConfigureUsers)
