# # frozen_string_literal: false

# Before do
#   HttpRequest.reset_stubs
#   PageHelpers.resize_window(1440, 900)
# end

# Before '@profiles_enabled' do
#   cassandra.modules.set('profiles')
#   cassandra_config = ConfigHelpers.read_config('browser')
#   cassandra_config['features']['profilesManagement'] = true
#   ConfigHelpers.write_config('browser', cassandra_config)
# end

# Before '@start_again_disabled' do
#   cassandra_config = ConfigHelpers.read_config('browser')
#   cassandra_config['features']['simulcast']['options']['playlistOverride']['channels'][0]['startAgainEnabled'] = false
#   ConfigHelpers.write_config('browser', cassandra_config)
# end

# Before '@advertisement_service_stub' do
#   cassandra.services.set({ ads: 'https://advertisementstub:6789' })
# end

# Before '@watchlive-refresh-interval-10s' do
#   cassandra.options.set({ watchLive: { refreshInterval: 10_000 } })
# end

# Before '@product_and_user_data_returns_false' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?validProductData=false&validUserData=false", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

# Before '@delayed_response_in_pre-purchase_state' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?delay=30000&amazonUserId=23456", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

# Before '@user_with_invalid_amazon_id' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?amazonUserId=23456", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

# Before '@retry_purchase' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?amazonUserId=23456&success=false", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

# Before '@purchase_state_pending' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?pending=true&amazonUserId=23456", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

# Before '@purchase_state_unknown_failure' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?invalid=true&success=false&amazonUserId=23456", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

# Before '@purchase_state_pending_returns_404' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?pending=true?", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
#   configure_usp_stub_with_error('hippo', 500)
# end

# Before '@already_purchase_state' do
#   response = HTTParty.post("#{Config.usp_stub}/config/java_script/amazon_sdk?alreadyPurchased=true&amazonUserId=23456", verify: false, timeout: 10)
#   response.code == 201 ? response.response : (abort "!!! Failed to configure amazon sdk !!! #{response.response}")
# end

Before ['not @cookie_dialog', 'not @update_location', 'not @do_not_launch_app_at_start'] do
  require 'pry'; binding.pry
  Capybara.current_session.visit('http://www.google.com') # browser launches and loads google.com
  Capybara.current_session.visit('https://example.com/') # Net::ReadTimeout: Net::ReadTimeout with #<TCPSocket:(closed)>
  load_app_without_signing_in
end