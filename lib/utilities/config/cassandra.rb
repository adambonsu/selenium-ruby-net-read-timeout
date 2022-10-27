# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'helpers', 'cassandra', 'environment')
require File.join(File.dirname(__FILE__), 'helpers', 'cassandra', 'configure')

module RbConfig
  # A class to generate Cassandra configuration file customised for with
  class Cassandra
    attr_accessor :ip, :port, :background, :platform, :path
    attr_reader :version, :home, :base, :index, :environment, :scheme

    include Helpers::Cassandra::Environment
    include Helpers::Cassandra::Configure

    def initialize_with_env(environment)
      @environment = environment
      initialize_with_cassandra_environment_vars(@environment)
      @version = version_from_pwd
      self
    end

    def initialize_with_cassandra_environment_vars(environment)
      @scheme = env_scheme(environment)
      @ip = env_host(environment)
      @port = env_port(environment)
      @path = env_path(environment)
      @version = env_version(environment)
      @platform = env_platform(environment)
      @home = home_url_from_attributes scheme: @scheme, host: @ip, port: @port, path: @path
      @base = strip_html_file_from_end(@home).chomp('/')
      @index = env_index(environment)
    end

    def features
      Helpers::Cassandra::Configure::Features.new(self)
    end

    def mandatory_config_files
      MANDATORY_CONFIG_FILES
    end

    def modules
      Helpers::Cassandra::Configure::Modules.new(self)
    end

    def services
      Helpers::Cassandra::Configure::Services.new(self)
    end

    def options
      Helpers::Cassandra::Configure::Options.new(self)
    end
  end
end
