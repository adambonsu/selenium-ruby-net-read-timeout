# frozen_string_literal: true

module KnowsHowToNavigateToProgrammePage
  def make_programme_id_invalid(programme_id)
    page.driver.browser.get("#{cassandra_validation_url}/programmes/#{programme_id}invalid/")
  end

  def deep_link_to_programme_page(programme_id)
    page.driver.browser.get("#{cassandra_validation_url}/programmes/#{programme_id}")
  end

  def make_episode_id_invalid(prograamme_id, episode_id)
    page.driver.browser.get("#{cassandra_validation_url}/programmes/#{prograamme_id}/#{episode_id}invalid")
  end

  def cassandra_validation_url
    "#{cassandra.scheme}://cassandra:#{cassandra.port}/#{cassandra.version}/#{cassandra.platform}"
  end

  def cassandra_change_url
    "#{cassandra.scheme}://cassandra:#{cassandra.port}/#{cassandra.version}/samsung"
  end

  def navigate_a_programme_from_a_category(table)
    @programmes = table.hashes
    @programmes.each { |programme| programme['categories'] = programme['categories'].split(',') }
    eventually(timeout: 5, polling_interval: 0.5) { select_option_via_side_nav 'CATEGORIES' }
    select_option_via_sub_nav @programmes.first['categories'].first
    navigate_to_programme_by_title @programmes.first['programmeTitle']
    remote :enter
    eventually { expect(app.programme).to be_displayed }
    eventually { expect(app.programme.cta.focus?).to be(true) }
  end

  def deep_link_to_collections_page
    page.driver.browser.get("#{cassandra_validation_url}/collections")
  end

  def navigate_down_to_kids_programme
    navigate_with_remote(:down, 'Failed to give kids programme focus after navigating :down') do
      !kids_programme_in_focus.nil?
    end
  end
end

World(KnowsHowToNavigateToProgrammePage)
