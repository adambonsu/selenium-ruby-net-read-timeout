# frozen_string_literal: true

module SitePrism
  class Page
    def focus?
      has_css?('.focus', wait: false)
    end

    def self.inherited(subclass)
      super
      SitePrismSubClass << subclass
    end

    def url(expansion = {})
      returned_url = if self.class.url.nil?
                       self.class.superclass.url
                     else
                       self.class.url
                     end
      Addressable::Template.new(returned_url).expand(expansion).to_s
    end

    def url_matcher
      if self.class.url_matcher.nil?
        self.class.superclass.url_matcher
      else
        self.class.url_matcher
      end
    end
  end
end
