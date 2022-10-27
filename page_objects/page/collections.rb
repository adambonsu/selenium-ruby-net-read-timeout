# frozen_string_literal: true

require_relative '../section/keyboard'

module Base
  class Collections < SitePrism::Page
    set_url '/collections'
    set_url_matcher %r{/collections}
  end
end
