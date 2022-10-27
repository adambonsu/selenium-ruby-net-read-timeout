# frozen_string_literal: true

module KnowsHowToUseChromeNetworkTab
  def browser_network_tab
    Capybara.page.execute_script('var performance = window.performance || window.mozPerformance || window.msPerformance || window.webkitPerformance || {}; var network = performance.getEntries() || {}; return network;')
  end

  def ignore_requests_to_app(requests)
    # TODO: included https://perso-hero-experiment.prd.perso.itv.com/perso-hero to be ignored - this is temporarily hardcoded for AB testing
    requests.reject { |url| url =~ /#{Config.cassandra_config}|#{cassandra_validation_url}/i || 'https://perso-hero-experiment.prd.perso.itv.com/perso-hero' }
  end

  def app_network_requests_by_name
    browser_network_tab.map { |r| r['name'] }
  end
end

World(KnowsHowToUseChromeNetworkTab)
