# frozen_string_literal: true

class ConfigHelpers
  @project_root = File.expand_path('../../', __dir__)
  @version_number = Dir.entries(File.join(@project_root, 'server/public'))[2]

  def self.read_config(platform)
    file_path = "./server/public/#{@version_number}/#{platform}/config.env.json"
    JSON.parse(File.read(file_path))
  end

  def self.write_config(platform, config_change)
    file_path = "./server/public/#{@version_number}/#{platform}/config.env.json"
    File.write(file_path, JSON.dump(config_change))
  end

  def self.reset_config(platform)
    source_file = File.join(@project_root, "/config/fe-cassandra/#{platform}/config.env.json")
    target_file = File.join(@project_root, "/server/public/#{@version_number}/#{platform}/config.env.json")
    FileUtils.cp_r(source_file, target_file)
  end
end
