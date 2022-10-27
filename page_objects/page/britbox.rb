# frozen_string_literal: true

require_relative 'global'

module Base
  class Britbox < Base::Global
    set_url_matcher %r{/settings/britbox}
    element :available_devices, '.BritboxUpsell__icons-content'
    element :logo, "[data-testid='britbox-logo']"
    element :page_title, '.BritboxUpsell__title'
    element :qr_code, "[data-testid='qr-code']"
  end
end
