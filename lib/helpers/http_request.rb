# frozen_string_literal: true

class HttpRequest
  def self.reset_stubs
    KnowsHowToConfigureAdvertisementStub.reset_advertisement_stub
    KnowsHowToConfigureCassandraConfig.reset_cassandra_config
    KnowsHowToConfigureDiscoveryStub.reset_discovery_stub
    KnowsHowToConfigureUspStub.reset_usp_stub
    KnowsHowToConfigureVideoStub.reset_video_stub
  end
end
