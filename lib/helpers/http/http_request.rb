# frozen_string_literal: true

module HTTP
  # Helper class to wrap httparty requests
  class Request
    include HTTParty
    attr_accessor :uri, :options

    format :json

    def initialize(uri)
      @uri = uri
      @options = {}
    end

    def put
      send(:put)
    end

    def get
      send(:get)
    end

    def post
      send(:post)
    end

    def patch
      send(:patch)
    end

    def update
      send(:update)
    end

    def delete
      send(:delete)
    end

    private

    def send(method)
      default_options = { verify: false }
      resp = self.class.send(method, uri, default_options.merge(options))
      HTTP::Response.new(resp)
    end
  end
end
