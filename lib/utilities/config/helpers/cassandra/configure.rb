# frozen_string_literal: true

module Helpers
  module Cassandra
    # Include this module to manipulate Cassandra config files
    module Configure
      PUBLIC_DIR          = 'server/public'
      TEMPLATES_DIR       = 'config'
      MANDATORY_CONFIG_FILES = %w[config.json config.env.json].freeze

      require File.join(File.dirname(__FILE__), 'configure', 'operations')
      require File.join(File.dirname(__FILE__), 'configure', 'features')

      include Helpers::Cassandra::Configure::Operations

      def config_output
        File.join(PUBLIC_DIR, @version, @platform.to_s, 'config.json')
      end

      def config_env_output(platform)
        raise 'Cassandra#config_env_output(): version not known' if @version.nil?

        File.join(PUBLIC_DIR, @version, platform.to_s, 'config.env.json')
      end

      def config_file_path_for(config_file_name)
        case config_file_name
        when /^config\.json$/i
          config_output
        when /^config\.env\.json/i
          config_env_output(@platform)
        end
      end

      def config_env_contents
        f = File.open(config_env_output(@platform), 'r').read
        JSON.parse(f)
      end
    end
  end
end
