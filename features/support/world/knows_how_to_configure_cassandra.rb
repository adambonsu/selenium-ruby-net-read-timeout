# frozen_string_literal: true

module KnowsHowToConfigureCassandra
  def environment
    @environment ||= RbConfig::Environment.new
  end

  def cassandra
    @cassandra ||= RbConfig::Cassandra.new.initialize_with_env(environment)
  end
end

World(KnowsHowToConfigureCassandra)
