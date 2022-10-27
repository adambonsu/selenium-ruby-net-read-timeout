# frozen_string_literal: true

require_relative 'global'
require_relative '../helpers/app'

class App < Base::Global
  include ::Helpers::App

  element :loadingscreen, '#loadingScreen'
  element :loading_sponsorship, '.LoadingScreen__sponsorship'

  def initialize
    super
    all_classes = SitePrismSubClass.results
    @base_classes = all_classes.select { |class_name| class_name.to_s =~ /Base/ }
    @sub_class_classes = all_classes.reject { |class_name| class_name.to_s =~ /Base/ }
    @base_classes = reject_base_classes
    manipulate_classes
  end

  def current_page
    # to do: loop over Page classes, instead of base classes
    known_page_class = @base_classes.find do |bc|
      has_css?(class_to_page_id(bc), wait: false)
    rescue StandardError
      # Caught Error reading page CSS - fail gracefully
      false
    end

    if known_page_class
      send(class_to_method_name(known_page_class))
    else
      current_page_by_test_id
    end
  end

  def current_page_by_test_id
    known_page_class = @base_classes.find do |bc|
      has_css?(class_to_test_id(bc), wait: false)
    rescue StandardError
      # Caught Error reading page CSS - fail gracefully
      false
    end

    if known_page_class
      send(class_to_method_name(known_page_class))
    else
      send(class_to_method_name(Base::Global))
    end
  end

  def load_page(page_method)
    known_page_class = @base_classes.find { |bc| class_to_method_name(bc) == page_method }
    if known_page_class
      class_to_method_name(known_page_class)
    else
      send(class_to_method_name(Base::Global))
    end
  end

  def reject_base_classes
    @base_classes.select do |base_class_name|
      @sub_class_classes.find { |sub_class_name| sub_class_name.to_s[/::\w+/] == base_class_name.to_s[/::\w+/] }.nil?
    end
  end

  def manipulate_classes
    (@base_classes + @sub_class_classes).each do |result|
      self.class.send(:define_method, result.to_s.demodulize.underscore) do
        result.new
      end
    end
  end

  def exited?
    PageHelpers.console.map(&:message).any? { |m| m.include? 'Application:Exit' }
  end
end
