# frozen_string_literal: true

module Base
  class SignOut < Base::Global
    set_url_matcher %r{/settings/sign-out}

    element :sign_out_button, '.SignOut__button'
    element :sign_out_details, '.SignOut__details--container'
    element :sign_out_email, '.SignOut__details--email'
  end
end
