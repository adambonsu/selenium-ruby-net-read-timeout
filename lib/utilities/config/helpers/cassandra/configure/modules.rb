# frozen_string_literal: true

require_relative '../configure'

module Helpers
  module Cassandra
    module Configure
      # use to config environment modules
      class Modules
        include Helpers::Cassandra::Configure

        def initialize(cassandra)
          @cassandra = cassandra
        end

        def include?(name)
          configured_modules = @cassandra.parse_config_json(@cassandra.config_env_output(@cassandra.platform))['modules']

          return false unless configured_modules

          configured_modules.include? name
        end

        def set(new_mod)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['modules']<< new_mod unless @cassandra.modules.include? new_mod
          end
        end

        def delete(modules)
          @cassandra.update_config_json(@cassandra.config_env_output(@cassandra.platform)) do |platform_configuration|
            platform_configuration['modules'].delete(modules)
          end
        end
      end
    end
  end
end
