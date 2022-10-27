# frozen_string_literal: true

module SitePrism
  # some useful monkey patches into SitePrism
  class Section
    def focus?
      !(root_element[:class] =~ /focus/).nil? || has_css?('.focus', wait: false)
    rescue StandardError
      # Caught Error reading page CSS - fail gracefully
      false
    end

    def disabled?
      root_element[:class] =~ /disabled/ ? true : false
    rescue StandardError
      # Caught Error reading page CSS - fail gracefully
      false
    end
  end
end

module Capybara
  module Node
    # some useful monkey patches into Capybara
    class Element < Base
      ##
      #
      # Whether or not the element is focused. Not all drivers support CSS, so
      # the result may be inaccurate.
      #
      # @return [Boolean]     Whether the element is focused
      #
      def focus?
        synchronize { base.focus? }
      end
    end
  end

  module Selenium
    # some useful monkey patches into Capybara
    class Node
      def focus?
        !(native[:class] =~ /focus/).nil?
      rescue StandardError
        # Caught Error reading page CSS - fail gracefully
        false
      end

      def disabled?
        native[:class] =~ /disabled/ ? true : false
      rescue StandardError
        # Caught Error reading page CSS - fail gracefully
        false
      end
    end
  end
end
