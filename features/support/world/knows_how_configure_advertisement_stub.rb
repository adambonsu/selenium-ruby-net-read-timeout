# frozen_string_literal: true

module KnowsHowToConfigureAdvertisementStub
  def configure_advertisement_stub_with_error(service_name, status_code)
    response = HTTParty.post("#{Config.advertisement_stub}/config/service/#{service_name}?status=#{status_code}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure discovery stub (#{service_name}) with network error !!! #{response.response}")
  end

  def configure_advertisement_stub_with_delay(service_name, delay)
    response = HTTParty.post("#{Config.advertisement_stub}/config/service/#{service_name}?delay=#{delay}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure usp stub (#{service_name}) with delay !!! #{response.response}")
  end

  def self.reset_advertisement_stub
    response = HTTParty.get("#{Config.advertisement_stub}/reset", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to reset advertisement stub !!! #{response.response}")
  end
end

World(KnowsHowToConfigureAdvertisementStub)
