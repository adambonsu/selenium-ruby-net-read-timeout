# frozen_string_literal: true

module KnowsHowToConfigureFeeds
  def local_datetime_to_utc_datetime(local_datetime)
    to_utc_datetime(datetime_to_date_s(local_datetime))
  end

  def local_datetime_days_ago_to_utc_datetime(local_datetime)
    to_utc_datetime(local_datetime_days_ago_to_date_s(local_datetime))
  end

  def local_datetime_days_from_now_to_utc_datetime(local_datetime)
    to_utc_datetime(local_datetime_days_from_now_to_date_s(local_datetime))
  end

  def configure_categories(categories)
    body = { 'categories' => categories }
    configure_discovery_stub_content_override('discovery', body.to_json)
  end

  def configure_productions(productions)
    body = { 'productions' => productions }
    configure_discovery_stub_content_override('platform', body.to_json)
  end

  def configure_platform(body, _override = 'content')
    configure_discovery_stub_content_override('platform', body.to_json)
  end

  def configure_schedule(body, _override = 'content')
    configure_discovery_stub_content_override('scheduled', body.to_json)
  end

  def schedule_start_again(programme_one_sa_flag, programme_two_sa_flag, programme_three_sa_flag = true)
    current_programme_start_time = sixty_seconds_in_the_past.strftime('%Y-%m-%dT%H:%M+01:00')
    current_programme_utc_time = seconds_to_utc_seconds(sixty_seconds_in_the_past).strftime('%Y-%m-%dT%H:%M:00Z')
    next_programme_start_time = sixty_seconds_in_the_future.strftime('%Y-%m-%dT%H:%M+01:00')
    next_programme_utc_time = seconds_to_utc_seconds(sixty_seconds_in_the_future).strftime('%Y-%m-%dT%H:%M:00Z')
    next2_programme_start_time = (sixty_seconds_in_the_future + 60).strftime('%Y-%m-%dT%H:%M+01:00')
    next2_programme_utc_time = seconds_to_utc_seconds(sixty_seconds_in_the_future + 60).strftime('%Y-%m-%dT%H:%M:00Z')
    data = {'slots' => [
        {'programmeTitle' => 'Test 1', 'productionId' => '1/0694/8579#001', 'startTime' => current_programme_start_time, 'onAirTimeUTC' => current_programme_utc_time, 'channel' => 'ITV', 'startAgainSimulcast' => start_again_enabled?(programme_one_sa_flag)},
        {'programmeTitle' => 'Test 2', 'productionId' => '2/4545/0112#001', 'startTime' => next_programme_start_time, 'onAirTimeUTC' => next_programme_utc_time, 'channel' => 'ITV', 'startAgainSimulcast' => start_again_enabled?(programme_two_sa_flag)},
        {'programmeTitle' => 'Test 3', 'productionId' => '2/4545/0342#001', 'startTime' => next2_programme_start_time, 'onAirTimeUTC' => next2_programme_utc_time, 'channel' => 'ITV', 'startAgainSimulcast' => start_again_enabled?(programme_three_sa_flag)}
    ]}
    configure_schedule(data)
  end

  def start_again_enabled?(flag)
    if flag
      'https://dev-www.itv.com/playlists/dash/simulcast'
    else
      'null'
    end
  end

  def hostname_by_service(service)
    data = load_config("fe-cassandra/#{ENV['ENVIRONMENT']}/config.env.json")
    data['services'][service]
  end

  require 'json'

  def load_config(relative_path_to_config_file)
    JSON.parse(File.read("./config/#{relative_path_to_config_file}"))
  end

  def datetime_to_date_s(datetime)
    seconds = datetime[:seconds] || 0
    Time.new(datetime[:year], datetime[:month], datetime[:day], datetime[:hours], datetime[:minutes], seconds).to_s
  end

  def local_datetime_days_ago_to_date_s(datetime)
    seconds = datetime[:seconds] || '00'
    minutes = datetime[:minutes] || '00'
    hours = datetime[:hours] || '00'
    result = Time.at(Time.now.to_i - (86_400 * datetime[:days])).to_s
    result[11, 8] = "#{hours}:#{minutes}:#{seconds}"
    result
  end

  def local_datetime_days_from_now_to_date_s(datetime)
    seconds = datetime[:seconds] || '00'
    minutes = datetime[:minutes] || '00'
    hours = datetime[:hours] || '00'
    result = Time.at(Time.now.to_i + (86_400 * datetime[:days])).to_s
    result[11, 8] = "#{hours}:#{minutes}:#{seconds}"
    result
  end

  def to_utc_datetime(localtime)
    Time.parse(localtime).getutc.strftime('%Y-%m-%dT%H:%M:00Z')
  end

  def sixty_seconds_in_the_past
    Time.now - 60
  end

  def sixty_seconds_in_the_future
    Time.now + 60
  end

  def seconds_to_utc_seconds(time)
    time - 3600
  end

  def utc_seconds_to_seconds(time)
    time + 3600
  end
end

World(KnowsHowToConfigureFeeds)
