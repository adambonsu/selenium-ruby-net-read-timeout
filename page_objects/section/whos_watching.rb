# frozen_string_literal: true

module Base
  class WhosWatching < SitePrism::Section
    elements :profile_button, '.ProfileButton__button'
    elements :profile_options, '.ProfileButton__label'

    def options
      profile_options.map(&:text)
    end
  end
end
