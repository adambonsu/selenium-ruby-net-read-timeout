# default class for Sinatra routes
class App < Sinatra::Base
  set :public_folder, 'public'
  set :static, false
  set :config, {}
  set :base_url, 'https://cassandra:5000'
  set :platforms, %w[amazonfiretv browser samsung freeview youview youviewsony virginmedia virginmediativo]

  configure :development do
    register Sinatra::Reloader
  end

  configure :production do
    register Sinatra::Reloader
  end

  before do
    # Default headers for all responses
    headers 'Access-Control-Allow-Origin' => '*',
            'Access-Control-Allow-Credentials' => 'true',
            'Access-Control-Allow-Headers' => 'Authorization, Origin, X-Requested-With, Content-Type, Accept, Accept-Encoding, Accept-Language, Host, Referer, User-Agent',
            'Access-Control-Allow-Methods' => 'GET, POST, OPTIONS',
            'Cache-Control' => 'no-cache'
  end

  def get_first_dir(path)
    Dir.entries(path).reject { |f| File.directory? f }.first
  end

  # List all available builds
  get '/' do
    version = get_first_dir(settings.public_folder)
    builds = Dir.entries("#{settings.public_folder}/#{version}").reject { |f| File.directory? f }

    body_text = 'Available Cassandra builds:'
    builds.each do |b|
      url = "#{settings.base_url}/#{version}/#{b}"
      body_text << "</br><a href='#{url}/homepage'>#{url}</a>"
    end

    status 200
    body body_text
  end

  # Dummy Event Bucket for PES and CPT to prevent tests from distorting real tracking data
  get '/event' do
    status 201
  end

  post '/event' do
    status 201
  end

  # Config endpoint to introduce loading delays
  post '/:device/config' do |_device|
    halt 400 if params['service'].nil?

    delay = params['delay']
    override = params['override']
    path = params['path']
    service = params['service']
    status = params['status']

    settings.config[service] = {}
    settings.config[service]['delay'] = delay
    settings.config[service]['override'] = override
    settings.config[service]['path'] = path
    settings.config[service]['status'] = status
    halt status 201
  end

  get '/:device/reset' do |device|
    settings.config.clear
  end

  get '/:device/vod/*' do |device, programme_id|
    version = get_first_dir(settings.public_folder)
    redirect "#{settings.base_url}/#{version}/#{device}/vod/#{programme_id}"
  end

  get '/:version/:device/vod/*' do |version, device, programme_id|
    if (programme_id.include?('.json'))
      send_file File.join(settings.public_folder.to_s, version + '/' + device + '/config.env.json')
    else
      send_file File.join(settings.public_folder.to_s, version + '/' + device + '/index.html')
    end
  end

  get '/:device/simulcast/*' do |device, programme_id|
    version = get_first_dir(settings.public_folder)
    redirect "#{settings.base_url}/#{version}/#{device}/simulcast/#{programme_id}"
  end

  get '/:version/:device/simulcast/*' do |version, device, programme_id|
    if (programme_id.include?('.json'))
      send_file File.join(settings.public_folder.to_s, version + '/' + device + '/config.env.json')
    else
      send_file File.join(settings.public_folder.to_s, version + '/' + device + '/index.html')
    end
  end

  get '/:version/:device/*/config.env.json' do |version, device, routing|
    send_file File.join(settings.public_folder.to_s, version + '/' + device + '/config.env.json')
  end

  get '/:device/settings/*' do |device, route|
    version = get_first_dir(settings.public_folder)
    redirect "#{settings.base_url}/#{version}/#{device}/settings/#{route}"
  end

  # Catch all for static file paths
  get '/:version/:device/*' do |version, device, routing|
    check_config_override(routing)

    if !params['productionId'].nil? || !params['simulcast'].nil? || !params['ccid'].nil? || !params['broadcaster'].nil?
      string = ''
      params.each do |key, value|
        string += "#{key}=#{value}&"
      end
      other_options = string.chomp('&')
      static_file = File.join(settings.public_folder.to_s, version + '/' + device + '/' + routing + "%3F#{other_options}")
    else
      static_file = File.join(settings.public_folder.to_s, version + '/' + device + '/' + routing)
    end
    if File.exist? static_file
      send_file static_file
    else
      send_file File.join(settings.public_folder.to_s, version + '/' + device + '/index.html')
    end
  end

  get '/:device' do |device|
    version = get_first_dir(settings.public_folder)
    redirect "#{settings.base_url}/#{version}/#{device}/homepage"
  end

  get '/:device/:page' do |device, page|
    version = get_first_dir(settings.public_folder)
    redirect "#{settings.base_url}/#{version}/#{device}/#{page}"
  end

  def check_config_override(path)
    return unless config_override?(path) || js_override?(path)

    delay, status, body = overriden_settings(path)

    override_delay(delay)
    override_status(status)
    override_body(body)
  end

  def config_override?(path)
    settings.config['config'] && path.include?('config.json')
  end

  def js_override?(path)
    settings.config['js'] && path.include?('chunk') && path.downcase.include?(settings&.config['js']['path']&.downcase)
  end

  def overriden_settings_config
    delay = settings.config['config']['delay']
    status = settings.config['config']['status']
    # Return empty json if config override
    body = settings.config['config']['override'] == 'config_error' ? '{}' : nil
    [ delay, status, body ]
  end

  def overriden_settings_js
    delay = settings.config['js']['delay']
    status = settings.config['js']['status']
    body = nil
    [ delay, status, body ]
  end

  def overriden_settings(path)
    if config_override?(path)
      overriden_settings_config
    else
      overriden_settings_js
    end
  end

  def override_delay(delay)
    sleep delay.to_i unless delay.nil?
  end

  def override_status(status)
    halt status.to_i unless status.nil?
  end

  def override_body(body)
    halt body unless body.nil?
  end

  error Sinatra::NotFound do
    redirect "#{settings.base_url}"
  end
end
