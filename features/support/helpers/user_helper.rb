# frozen_string_literal: true

class UserHelper
  USERS = {'hub' => {account_name: 'fe_hub_user'},
           'hub_plus' => {account_name: 'fe_hub_plus_verified_user'},
           'new' => {account_name: 'fe_new_hub_user'},
           'privacy_policy' => {account_name: 'fe_not_accepted_privacy_policy_user'},
           'hub_user_with_expired_hub_plus' => {account_name: 'fe_hub_user_with_expired_hub_plus'},
           'hub_verified_user' => {account_name: 'fe_hub_verified_user'},
           'hub_unverified_user' => {account_name: 'fe_hub_unverified_user'}}.freeze

  def self.check_updated_keys_for_test_user(user_id)
    req = HTTP::Request.new("#{Config.usp_stub}/update/user/#{user_id}")
    response = req.get
    response.code == 200 ? response.code : (abort 'Failed to load test user keys')
  end

  def self.config_test_user_for_pairing_code_sign_in(account_type, show_privacy_policy = false)
    user_id = user_id_from_account_type(account_type)
    HttpRequest.update_test_user(user_id, 'show_privacy_policy', show_privacy_policy)
    HttpRequest.validated_user = user_id
  end

  def self.create_test_user(username_id)
    user = Config.get_value(:users, username_id)
    HttpRequest.create_user(user)
  end

  def self.extract_user_id_from_auth_response(user)
    auth_response = JSON.parse(HttpRequest.authenticate_user(user['username'], user['password']))
    access_token = auth_response['access_token']
    JWT.decode(access_token, nil, false).first['sub']
  end

  def self.set_test_user_override(account_type, lastwatched_items)
    username_id = 'fe_hub_user' if account_type == 'hub'
    username_id = 'fe_hub_plus_verified_user' if account_type == 'hub_plus'
    user = Config.get_value(:users, username_id)
    HttpRequest.config_user_override(user['gui_id'], lastwatched_items.to_i)
  end

  def self.set_test_user_override_because_you_watched(account_type, time_minutes)
    username_id = 'fe_hub_user' if account_type == 'hub'
    username_id = 'fe_hub_plus_verified_user' if account_type == 'hub_plus'
    user = Config.get_value(:users, username_id)
    HttpRequest.config_because_you_watched(user['gui_id'], time_minutes.to_i)
  end

  def self.set_test_user_override_my_list(account_type, my_list_items)
    username_id = 'fe_hub_user' if account_type == 'hub'
    username_id = 'fe_hub_plus_verified_user' if account_type == 'hub_plus'
    user = Config.get_value(:users, username_id)
    HttpRequest.config_user_override_my_list(user['gui_id'], my_list_items.to_i)
  end

  def self.user_id_from_account_type(account_type)
    @account_name = ''
    USERS.each do |key, label|
      if account_type == key
        @account_name = label[:account_name]
        break
      end
    end
    user = Config.get_value(:users, @account_name)
    extract_user_id_from_auth_response(user)
  end

  def self.user_object_from_account_type(account_type)
    @account_name = ''
    USERS.each do |key, label|
      if account_type == key
        @account_name = label[:account_name]
        break
      end
    end
    Config.get_value(:users, @account_name)
  end

  def self.validate_user_by_guid(gui_id)
    HttpRequest.validated_user = gui_id
  end

  def self.user_profile_info(user)
    user_id = UserHelper.user_id_from_account_type(user)
    user_account = user_object_from_account_type(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user_account['username'], user_account['password']))['access_token']
    headers = { 'Authorization' => "Bearer #{access_token}" }
    response = HTTParty.get("#{Config.usp_stub}/users/#{user_id}/profile", headers: headers, verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to get user profile information !!! #{response.response}")
  end

  def self.user_full_name(user)
    response = user_profile_info(user)
    "#{JSON.parse(response.body)['firstName']} #{JSON.parse(response.body)['lastName']}"
  end

  def self.user_first_name(user)
    response = user_profile_info(user)
    JSON.parse(response.body)['firstName']
  end

  def self.user_last_name(user)
    response = user_profile_info(user)
    JSON.parse(response.body)['lastName']
  end

  def self.user_nickname(user, profile_element)
    user_id = UserHelper.extract_user_id_from_auth_response(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user['username'], user['password']))['access_token']
    headers = { 'Authorization' => "Bearer #{access_token}" }
    response = HTTParty.get("#{Config.usp_stub}/accounts/#{user_id}/profiles", headers: headers, verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to get user account information !!! #{response.response}")
    JSON.parse(response.body)[profile_element]['nickname']
  end

  def self.user_all_account_profiles(user)
    user_id = UserHelper.extract_user_id_from_auth_response(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user['username'], user['password']))['access_token']
    headers = { 'Authorization' => "Bearer #{access_token}" }
    response = HTTParty.get("#{Config.usp_stub}/accounts/#{user_id}/profiles", headers: headers, verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to get user account information !!! #{response.response}")
    JSON.parse(response.body)
  end

  def self.account_profile(user, account_type)
    all_profiles = user_all_account_profiles(user)
    case account_type
    when 'main'
      all_profiles[0]
    when 'kids'
      all_profiles[1]
    end
  end

  def self.user_set_seen_kids_onboarding(user)
    user_id = UserHelper.extract_user_id_from_auth_response(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user['username'], user['password']))['access_token']
    headers = { 'Authorization' => "Bearer #{access_token}" }
    response = HTTParty.put("#{Config.usp_stub}/users/#{user_id}/profile/kids-onboarding", headers: headers, verify: false, timeout: 10)
    PageHelpers.set_local_storage('itv-hasUserSeenKidsOnboarding', 'true')
    response.code == 200 ? response.response : (abort "!!! Failed to update onboarding screen endpoint !!! #{response.response}")
  end

  def self.has_user_seen_kids_onboarding(user)
    user_id = UserHelper.extract_user_id_from_auth_response(user)
    response = HTTParty.get("#{Config.usp_stub}/users/#{user_id}/profile/kids-onboarding", verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to get onboarding screen endpoint !!! #{response.response}")
    JSON.parse(response.body)['hasSeenKidsOnboarding']
  end

  # 'Get Profiles' endpoint
  def self.all_account_profiles(user)
    user_id = UserHelper.user_id_from_account_type(user)
    user_account = user_object_from_account_type(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user_account['username'], user_account['password']))['access_token']
    headers = { 'Authorization' => "Bearer #{access_token}" }
    response = HTTParty.get("#{Config.usp_stub}/accounts/#{user_id}/profiles", headers: headers, verify: false, timeout: 10)
    response.code == 200 ? response.response : (abort "!!! Failed to fetch account profiles !!! #{response.response}")
    JSON.parse(response.body)
  end

  # 'Add Profile' endpoint
  def self.add_account_profile(user, body)
    user_id = UserHelper.extract_user_id_from_auth_response(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user['username'], user['password']))['access_token']

    req = HTTP::Request.new("#{Config.usp_stub}/accounts/#{user_id}/profiles")
    req.options =
      { headers:
            {
                'Authorization' => "Bearer #{access_token}",
                'Content-Type' => 'application/vnd.account.profile.v1+json'
            },
        body: body.to_json }
    response = req.post
    response.code == 200 ? response.body : (abort "Failed to add account profile #{response.body}")
  end

  # 'Edit Profile' endpoint
  def self.edit_account_profile(user, profile_type, body)
    profile_id_to_edit = account_profile(user, profile_type)['profileId']

    user_id = UserHelper.extract_user_id_from_auth_response(user)
    access_token = JSON.parse(HttpRequest.authenticate_user(user['username'], user['password']))['access_token']

    req = HTTP::Request.new("#{Config.usp_stub}/accounts/#{user_id}/profiles/#{profile_id_to_edit}")
    req.options =
      { headers:
            {
                'Authorization' => "Bearer #{access_token}",
                'Content-Type' => 'application/vnd.account.profile.v1+json'
            },
        body: body.to_json }
    response = req.patch
    response.code == 204 ? response.body : (abort "Failed to edit account profile #{response.body}")
  end
end
