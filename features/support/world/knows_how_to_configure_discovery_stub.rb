# frozen_string_literal: true

module KnowsHowToConfigureDiscoveryStub
  def configure_discovery_stub_with_error(service_name, status_code)
    response = HTTParty.post("#{Config.discovery_stub}/config/service/#{service_name}?status=#{status_code}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure discovery stub (#{service_name}) with error !!! #{response.response}")
  end

  def configure_discovery_stub_with_delay(service_name, delay)
    response = HTTParty.post("#{Config.discovery_stub}/config/service/#{service_name}?delay=#{delay}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure usp stub (#{service_name}) with delay !!! #{response.response}")
  end

  def self.reset_discovery_stub
    response = HTTParty.get("#{Config.discovery_stub}/reset", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to reset discovery stub !!! #{response.response}")
  end

  def configure_discovery_stub_content_override(service_name, json_body)
    response = HTTParty.post("#{Config.discovery_stub}/config/service/#{service_name}?override=content", verify: false, body: json_body, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure custom override !!! #{response.response}")
  end

  def enable_discovery_logging
    response = HTTParty.post("#{Config.discovery_stub}/config/logging?enable=true", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to enable service logging !!! #{response.response}")
  end

  def disable_discovery_logging
    response = HTTParty.post("#{Config.discovery_stub}/config/logging?enable=false", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to disable service logging !!! #{response.response}")
  end

  def capture_discovery_log
    # logging must be disabled before reading the log file
    disable_discovery_logging
    # added sleep to allow any writing on the log to complete
    sleep 2
    # this will search the log file for all requests, except /config endpoint and the response body
    open('./log/discoverystub.log').grep_v(%r{/config|Body:})
  end
end

World(KnowsHowToConfigureDiscoveryStub)
