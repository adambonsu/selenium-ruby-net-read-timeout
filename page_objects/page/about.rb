# frozen_string_literal: true

require_relative 'global'

module Base
  class About < Base::Global
    set_url_matcher %r{/settings/about}
    element :reset_button, '#reset-settings'
    element :page_content, '.Page__content'
    element :about_link, '#about-link'
  end
end
