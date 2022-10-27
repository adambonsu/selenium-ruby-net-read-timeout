# frozen_string_literal: true

require 'time'
# module for handling asynchronous events'
module AsyncSupport
  def eventually (options = {}, &block)
    event_options = init(options)
    wait_for_event(event_options, &block)
    sleep event_options[:wait_afterwards]
  end

  def init(options)
    default_options = { timeout: 10, polling_interval: 1, wait_afterwards: 0 }
    event_options = default_options.merge options
    event_options[:time_limit] = Time.now + event_options[:timeout]
    event_options
  end

  def wait_for_event(event_options)
    loop do
      begin
        yield
        return
      rescue Exception => error
        # puts error.inspect
      end
      raise error if Time.now >= event_options[:time_limit]

      sleep event_options[:polling_interval]
    end
  end

  def event_occurred?
    yield == true
  rescue Exception => error
    false
  end
end
