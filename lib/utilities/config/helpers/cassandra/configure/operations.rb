# frozen_string_literal: true

module Helpers
  module Cassandra
    module Configure
      # Include this module to make Cassandra config file operations possible
      module Operations
        def enable_categories
          data = {'categories' => 'categories/main'}
          update_config_json(config_env_output(@platform)) do |json|
            json['modules'] = [] if json['modules'].nil?
            json['modules'] << data if json['modules'].select { |module_list| module_list.keys.include? 'categories' }.empty?
          end
        end

        def remove_config_section(section)
          update_config_json(config_env_output(@platform)) { |json| json.delete section }
        end

        def remove(config_file_name)
          path = config_file_path_for(config_file_name)
          return if path.nil? || !File.exist?(path)

          FileUtils.rm path
        end

        def back_up(config_file_name)
          path = config_file_path_for(config_file_name)
          return if path.nil? || !File.exist?(path)

          FileUtils.cp path, "#{path}.backup"
        end

        def restore_device_config
          if File.exist? "#{config_output}.backup"
            FileUtils.mv "#{config_output}.backup", config_output
          else
            warn "#{config_output}.backup not found"
          end
        end

        def restore_device_config_env
          config_env_file = config_env_output(@platform)
          FileUtils.mv "#{config_env_file}.backup", config_env_file if File.exist? "#{config_env_file}.backup"
        end

        def update_config_json(file)
          backup_config_json(file)

          config = File.read file
          json = JSON.parse config

          yield json

          File.open(file, 'w') do |output|
            output.write JSON.pretty_generate(json)
          end
        end

        def backup_config_json(file)
          FileUtils.cp file, "#{file}.backup" unless File.exist? "#{file}.backup"
        end

        def parse_config_json(file)
          config = File.read file
          JSON.parse config
        end
      end
    end
  end
end
