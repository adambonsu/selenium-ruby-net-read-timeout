# # frozen_string_literal: false

Before do
  Capybara.current_session.visit('http://www.google.com') # browser launches and loads google.com
  sleep 5
  Capybara.current_session.visit('https://example.com/') # Net::ReadTimeout: Net::ReadTimeout with #<TCPSocket:(closed)>
end