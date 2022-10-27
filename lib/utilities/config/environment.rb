# frozen_string_literal: true

module RbConfig
  # A class to expose Test Environment configuration
  class Environment
    def cassandra_scheme
      ENV['CASSANDRA_SCHEME']
    end

    def cassandra_platform
      ENV['ENVIRONMENT']
    end

    def cassandra_url
      ENV['CASSANDRA_URL']
    end

    def cassandra_host
      ENV['CASSANDRA_HOST']
    end

    def cassandra_port
      ENV['CASSANDRA_PORT']
    end

    def cassandra_version
      ENV['PACKAGE_VERSION']
    end

    def cassandra_query
      ENV['CASSANDRA_QUERY']
    end

    def cassandra_shared_server
      ENV['CASSANDRA_SHARED_SERVER']
    end

    def cassandra_index
      ENV['TEST_ENV_NUMBER'].to_i
    end

    def inspect
      to_s
    end

    def to_s
      format('#<%<klass>s:%<object_id>s cassandra_url[%<cassandra_url>s], cassandra_scheme[%<cassandra_scheme>s], cassandra_host[%<cassandra_host>s], cassandra_port[%<cassandra_port>s], cassandra_version[%<cassandra_version>s], cassandra_platform[%<cassandra_platform>s], cassandra_query[%<cassandra_query>s], cassandra_shared_server[%<cassandra_shared_server>s], cassandra_index[%<cassandra_index>s]>', klass: self.class, object_id: object_id, cassandra_url: cassandra_url, cassandra_scheme: cassandra_scheme, cassandra_host: cassandra_host, cassandra_port: cassandra_port, cassandra_version: cassandra_version, cassandra_platform: cassandra_platform, cassandra_query: cassandra_query, cassandra_shared_server: cassandra_shared_server, cassandra_index: cassandra_index)
    end
  end
end
