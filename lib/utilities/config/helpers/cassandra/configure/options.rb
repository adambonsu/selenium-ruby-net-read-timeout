# frozen_string_literal: true

require_relative '../configure'

module Helpers
  module Cassandra
    module Configure
      # use to config Cassandra Options
      class Options
        include Helpers::Cassandra::Configure

        def initialize(cassandra)
          @cassandra = cassandra
        end

        def set(option_key_and_value)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['options'] = {} unless platform_configuration['options']
            platform_configuration['options'][option_key_and_value.keys.first.to_s] = option_key_and_value.values.first
          end
        end

        def delete(option)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['options'].delete(option)
          end
        end
      end
    end
  end
end
