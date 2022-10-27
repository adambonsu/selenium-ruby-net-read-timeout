# frozen_string_literal: true

# nodoc
class Config
  def self.load_config(config)
    config_dir = File.expand_path('../../config', __dir__)
    YAML.load_file(File.join(config_dir, "#{config}.yml"))
  end

  def self.get_value(config_name, value)
    environment_name = ENV['ENVIRONMENT']
    config = load_config(config_name)
    raise "Error no config value found for environment #{environment_name} in #{config_name}.yml" if config[environment_name].nil?

    config[environment_name][value]
  end

  def self.cassandra_config
    environment_name = ENV['ENVIRONMENT']
    config = load_config(:environment)
    config[environment_name.to_s]['base_url']
  end

  def self.advertisement_stub
    config = load_config(:environment)
    config['stubs']['advertisement_stub']
  end

  def self.discovery_stub
    config = load_config(:environment)
    config['stubs']['discovery_stub']
  end

  def self.usp_stub
    config = load_config(:environment)
    config['stubs']['usp_stub']
  end

  def self.video_stub
    config = load_config(:environment)
    config['stubs']['video_stub']
  end
end
