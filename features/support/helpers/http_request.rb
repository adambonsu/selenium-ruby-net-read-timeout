# frozen_string_literal: true

class HttpRequest
  def self.create_user(user)
    req = HTTP::Request.new("#{Config.usp_stub}/users")
    req.options =
      { headers:
            {
              'Content-Type' => 'application/vnd.user.profile.v1+json',
              'Accept' => 'application/json'
            },
        body: <<~BODY
          {
            "title":"Miss",
            "firstName": "user01",
            "lastName": "pbtest-group",
            "dateOfBirth": "1990-01-01",
            "postcode": "WC1X 8XZ",
            "email": "#{user['username']}",
            "password": "#{user['password']}",
            "emailOptIn": false,
            "registrationSource": "playerBrowser",
            "email_verified": true,
            "emailOptIn": true,
            "free_trial": true,
            "role": "hubplus"
          }
        BODY
      }
    response = req.post
    response.code == 204 ? response.body : (abort "Failed to authenticate user #{response.body}")
  end

  def self.config_user_override(user_id, lastwatched = 0)
    req = HTTP::Request.new("#{Config.usp_stub}/config/user/#{user_id}?lastwatched=#{lastwatched}")
    req.options =
      { headers:
            {
              'Content-Type' => 'application/json',
              'Accept' => 'application/json'
            } }
    response = req.post
    response.code == 200 ? response.body : (abort "Failed to config last watched items #{response.body}")
  end

  def self.config_because_you_watched(user_id, time_minutes)
    req = HTTP::Request.new("#{Config.usp_stub}/config/user/#{user_id}?watched_history_programme_time=#{time_minutes}")
    req.options =
      { headers:
              {
                  'Content-Type' => 'application/json',
                  'Accept' => 'application/json'
              } }
    response = req.post
    response.code == 200 ? response.response : (abort "Failed to configure because you watched #{response.response}")
  end

  def self.config_user_override_my_list(user_id, mylist_number = 0)
    req = HTTP::Request.new("#{Config.usp_stub}/config/user/#{user_id}?mylist=#{mylist_number}")
    req.options =
      { headers:
              {
                  'Content-Type' => 'application/json',
                  'Accept' => 'application/json'
              } }
    response = req.post
    response.code == 200 ? response.body : (abort "Failed to config my list items #{response.body}")
  end

  def self.validated_user=(user_id)
    req = HTTP::Request.new("#{Config.usp_stub}/config/validated_user/#{user_id}")
    req.options =
      { headers:
            {
              'Content-Type' => 'application/json',
              'Accept' => 'application/json'
            } }
    response = req.post
    response.code == 200 ? response.body : (abort "Failed to set validated_user #{response.body}")
  end

  def self.authenticate_user(username, password)
    base_url = Config.usp_stub

    req = HTTP::Request.new("#{base_url}/auth")
    req.options =
      { headers:
            {
              'Content-Type' => 'application/json',
              'Accept' => 'application/json'
            },
        body: <<~BODY
          {
            "username":"#{username}",
            "password":"#{password}",
            "scope":"content",
            "grant_type":"password",
            "nonce": "abc123"
          }
        BODY
      }
    response = req.post
    response.code == 200 ? response.body : (abort "Failed to authenticate user #{response.body}")
  end

  def self.update_test_user(user_id, user_key, key_value)
    new_key_value = (user_key == 'stripe_id'? "\"#{key_value}\"" : key_value)
    req = HTTP::Request.new("#{Config.usp_stub}/update/user/#{user_id}")
    req.options =
      { body: <<~BODY
        {
          "#{user_key}": #{new_key_value}
        }
      BODY
      }
    response = req.put
    response.code == 204 ? response.code : (abort 'Failed to update test_user key')
  end
end
