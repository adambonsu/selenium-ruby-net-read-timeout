# frozen_string_literal: true

module Helpers
  module App
    def strip_leading_module_names(class_name)
      class_name.to_s.split('::').last
    end

    def class_to_method_name(class_name)
      stripped_name = strip_leading_module_names(class_name)
      stripped_name.gsub(/(.)([A-Z])/, '\1_\2').downcase
    end

    def class_to_page_id(class_name)
      stripped_name = strip_leading_module_names(class_name)
      "##{stripped_name[0].downcase}#{stripped_name[1..]}Page"
    end

    def class_to_test_id(class_name)
      stripped_name = strip_leading_module_names(class_name)
      "[data-testid='#{stripped_name[0].downcase}#{stripped_name[1..]}Page']"
    end
  end
end
