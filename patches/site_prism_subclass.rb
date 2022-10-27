# frozen_string_literal: true

class SitePrismSubClass
  def self.<<(input)
    @classes ||= []
    @classes << input
    @classes
  end

  def self.results
    @classes
  end
end
