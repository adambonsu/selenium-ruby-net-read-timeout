# # frozen_string_literal: false

Before do
  Capybara.current_session.visit('http://www.google.com') # browser launches and loads google.com
  sleep 3
  Capybara.current_session.visit('https://example.com/') # Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
end