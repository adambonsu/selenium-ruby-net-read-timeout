# frozen_string_literal: true

module KnowsHowToConfigureUspStub
  def enable_user_service_logging
    response = HTTParty.post("#{Config.usp_stub}/config/logging?enable=true", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to enable service logging !!! #{response.response}")
  end

  def disable_user_service_logging
    response = HTTParty.post("#{Config.usp_stub}/config/logging?enable=false", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to disable service logging !!! #{response.response}")
  end

  def capture_user_service_log
    # logging must be disabled before reading the log file
    disable_user_service_logging
    # added sleep to allow any writing on the log to complete
    sleep 2
    # this will search the log file for all requests, except /config endpoint and the response body
    open('./log/uspstub.log').grep_v(%r{/config|Body:})
  end

  def configure_usp_stub_with_error(service_name, status_code)
    response = HTTParty.post("#{Config.usp_stub}/config/service/#{service_name}?status=#{status_code}", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to configure usp stub (#{service_name}) with error !!! #{response.response}")
  end

  def configure_usp_stub_with_delay(service_name, delay)
    response = HTTParty.post("#{Config.usp_stub}/config/service/#{service_name}?delay=#{delay}", verify: false, timeout: 20)
    response.code == 200 ? response.response : (abort "!!! Failed to configure usp stub (#{service_name}) with delay !!! #{response.response}")
  end

  def self.reset_usp_stub
    response = HTTParty.get("#{Config.usp_stub}/reset", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to reset usp stub !!! #{response.response}")
  end
end

World(KnowsHowToConfigureUspStub)
