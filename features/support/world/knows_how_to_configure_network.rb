# frozen_string_literal: true

module KnowsHowToConfigureNetwork
  def configure_network_performance(latency___seconds_per_packet, throughput__kb_per_second)
    driver = Capybara.current_session.driver
    driver.browser.network_conditions = {offline: false, latency: (latency___seconds_per_packet * 1000), throughput: throughput__kb_per_second}
  end

  def network_offline(latency___seconds_per_packet, throughput__kb_per_second)
    driver = Capybara.current_session.driver
    driver.browser.network_conditions = {offline: true, latency: (latency___seconds_per_packet * 1000), throughput: throughput__kb_per_second}
  end

  def network_performance
    driver = Capybara.current_session.driver
    driver.browser.network_conditions
  end

  def reset_network_performance
    configure_network_performance(0, 0)
  end

  def turn_internet_off
    error_code = 404
    HTTParty.post("#{Config.advertisement_stub}/config/service?status=#{error_code}", verify: false)
    HTTParty.post("#{Config.discovery_stub}/config/service?status=#{error_code}", verify: false)
    HTTParty.post("#{Config.usp_stub}/config/service?status=#{error_code}", verify: false)
    # TODO: configure cassandra stub and video stub
    # HTTParty.post("#{Config.cassandra_config}/config/service?status=#{error_code}", verify: false)
    # HTTParty.post("#{Config.video_stub}/config/service?status=#{error_code}", verify: false)
  end

  def turn_internet_on
    KnowsHowToConfigureAdvertisementStub.reset_advertisement_stub
    KnowsHowToConfigureDiscoveryStub.reset_discovery_stub
    KnowsHowToConfigureUspStub.reset_usp_stub
    # TODO: reset cassandra stub and video stub when they're set up as part of the turn_internet_off() method
  end
end

World(KnowsHowToConfigureNetwork)
