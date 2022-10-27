# frozen_string_literal: true

module KnowsHowToConfigureCassandraConfig
  def self.reset_cassandra_config
    response = HTTParty.get("#{Config.cassandra_config}/reset", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to reset cassandra config !!! #{response.response}")
  end
end

World(KnowsHowToConfigureCassandraConfig)
