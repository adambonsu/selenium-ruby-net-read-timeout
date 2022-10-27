# frozen_string_literal: true

module Helpers
  module Cassandra
    # Include this module to access Cassandra environment settings
    module Environment
      require_relative 'configure'

      DEFAULT_SCHEME = 'https'
      DEFAULT_HOST = 'localhost'
      DEFAULT_PORT = 5000
      DEFAULT_PAGE = 'index.html'
      DEFAULT_QUERY = ''
      DEFAULT_INDEX = 1

      require 'uri'

      def home_url_from_attributes(attributes)
        uri = URI::HTTP.build scheme: attributes[:scheme], host: attributes[:host], port: attributes[:port], path: attributes[:path]
        uri.to_s
      end

      def env_scheme(environment)
        environment.cassandra_scheme.nil? ? DEFAULT_SCHEME : environment.cassandra_scheme
      end

      def env_host(environment)
        environment.cassandra_host.nil? ? DEFAULT_HOST : environment.cassandra_host
      end

      def env_port(environment)
        port = environment.cassandra_port.nil? ? DEFAULT_PORT : environment.cassandra_port
        port.to_i
      end

      def env_version(environment)
        environment.cassandra_version
      end

      def env_platform(environment)
        environment.cassandra_platform
      end

      def env_path(environment)
        "/#{env_version(environment)}/#{env_platform(environment)}/#{DEFAULT_PAGE}" if env_version(environment)
      end

      def env_index(environment)
        environment.cassandra_index.nil? ? DEFAULT_INDEX : environment.cassandra_index
      end

      def version_from_pwd
        # minimum: /{version}/{platform}/index.html
        path = Dir.glob('server/public/*').first
        path.split('/').size > 2 ? path.split('/')[2] : nil
      end

      def platform_from_path(path)
        path = strip_html_file_from_end(path)
        # minimum: /{platform}/index.html
        path.split('/').size > 1 ? path.split('/').last : nil
      end

      def strip_html_file_from_end(path)
        path.gsub(%r{//(\w)+\.html.*}, '/')
      end

      def config_env_template(platform)
        File.join(Configure::TEMPLATES_DIR, 'config.env.json', "#{platform}.erb")
      end

      def versions
        result = public_dirs.map { |dir| dir.split('/').last }.select { |d| d =~ /\./ }
        result.empty? ? [DEFAULT_VERSION] : result
      end

      def public_dirs
        Dir.glob("#{Configure::PUBLIC_DIR}/*").select { |f| File.directory? f }
      end
    end
  end
end
