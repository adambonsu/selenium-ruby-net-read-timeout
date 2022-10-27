# frozen_string_literal: true

module KnowsHowToConfigureVideoStub
  def configure_video_stub_with_error(service_name, status_code)
    response = HTTParty.post("#{Config.video_stub}/config/service/#{service_name}?status=#{status_code}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure video stub (#{service_name}) with error !!! #{response.response}")
  end

  def configure_video_stub_with_delay(service, seconds)
    response = HTTParty.post("#{Config.video_stub}/config/service/#{service}?delay=#{seconds}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure video delay !!! #{response.response}")
  end

  def self.reset_video_stub
    response = HTTParty.get("#{Config.video_stub}/config/reset", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to reset video stub !!! #{response.response}")
  end
end

World(KnowsHowToConfigureVideoStub)
