# frozen_string_literal: true

require_relative '../configure'

module Helpers
  module Cassandra
    module Configure
      # use to config Cassandra Services
      class Services
        include Helpers::Cassandra::Configure

        def initialize(cassandra)
          @cassandra = cassandra
        end

        def set(service_key_and_value)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['services'] = {} unless platform_configuration['services']
            platform_configuration['services'][service_key_and_value.keys.first.to_s] = service_key_and_value.values.first
          end
        end

        def delete(service)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['services'].delete(service)
          end
        end
      end
    end
  end
end
