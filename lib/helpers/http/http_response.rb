# frozen_string_literal: true

module HTTP
  # Helper class to wrap httparty responses
  class Response
    attr_reader :response, :body, :code, :headers

    def initialize(resp)
      @response = resp
      @body = resp.body
      @headers = resp.headers
      @code = resp.code
    end
  end
end
