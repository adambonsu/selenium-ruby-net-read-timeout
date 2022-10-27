# frozen_string_literal: true

require_relative '../configure'

module Helpers
  module Cassandra
    module Configure
      # use to config environment features
      class Features
        include Helpers::Cassandra::Configure

        def initialize(cassandra)
          @cassandra = cassandra
        end

        def set(feature_key_and_value)
          puts feature_key_and_value
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['features'][feature_key_and_value.keys.first.to_s] = feature_key_and_value.values.first
          end
        end

        def delete(feature)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['features'].delete(feature)
          end
        end
      end
    end
  end
end
