# frozen_string_literal: true

module KnowsHowToGetPesEvents
  def clear_pes_array
    response = HTTParty.get("#{Config.video_stub}/config/reset", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to get events !!! #{response.response}")
  end

  def last_pes_event
    response = HTTParty.get("#{Config.video_stub}/event", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to get events !!! #{response.response}")
    JSON.parse(response.body).last
  end

  def last_pes_event_media_type
    timeout = Time.now + 15
    media_type = ''
    while media_type != 'ad'
      response = last_pes_event
      media_type = JSON.parse(response)['data']['mediaType'] if JSON.parse(response)['data'].to_s.include? 'mediaType'
      media_type = JSON.parse(response)['data']['mediaTypeTo'] if JSON.parse(response)['data'].to_s.include? 'mediaTypeTo'
      sleep 1
      break if Time.now > timeout
    end
    media_type
  end

  def last_pes_event_media_type_prog
    timeout = Time.now + 15
    media_type = ''
    while media_type != 'programme'
      response = last_pes_event
      log response
      media_type = JSON.parse(response)['data']['mediaType'] if JSON.parse(response)['data'].to_s.include? 'mediaType'
      media_type = JSON.parse(response)['data']['mediaTypeTo'] if JSON.parse(response)['data'].to_s.include? 'mediaTypeTo'
      sleep 1
      break if Time.now > timeout
    end
    media_type
  end
end
World(KnowsHowToGetPesEvents)
