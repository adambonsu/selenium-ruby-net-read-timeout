# frozen_string_literal: true

module Base
  class ProgressIndicator < SitePrism::Section
    def value_attribute
      native.attribute('value')
    end

    def value
      value_attribute&.to_i
    end
  end
end
