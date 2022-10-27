# frozen_string_literal: true

# Shared class for all siteprism sections
module PageObjects
  class SectionBase < SitePrism::Section
    def native
      root_element.native
    end

    def click
      root_element.click
    end

    def hover
      root_element.hover
    end

    def disabled?
      root_element[:class] =~ /disabled/ ? true : false
    end

    def id
      root_element[:id]
    end

    def class
      root_element[:class]
    end

    def focused?
      elements = parent.all(':hover', visible: :all)
      elements.select { |e| e['class'] == root_element['class'] }.count.positive?
    end

    def click_at(position)
      x = (native.size.width * (position.to_f / 100)).to_i
      y = (native.size.height / 2) + 1
      Capybara.current_session.driver.browser.action
              .move_to(native, x, y).click.perform
    end

    def current_position
      element_id = native.attribute('class')
      PageHelpers.get_style_attribute(element_id, 'width')
    end
  end
end
