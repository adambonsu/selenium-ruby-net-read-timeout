# frozen_string_literal: true

module Base
  class KeyboardRow < SitePrism::Section
    element :focus, '.focus'
    elements :keys, '.Key'
    SPECIAL_KEYS = ['@', '.', '.com', '.co.uk', 'ABC', '# & £', 'abc', '-'].freeze

    def include?(char)
      keys.map(&:text).include? char
    end

    def key_with_focus
      focus
    end

    def focused_button
      focus.text.empty? ? 'Backspace' : focus.text
    end

    def key_position_for(char)
      keys.map(&:text).index(char)
    end

    def focused_key_position
      keys.map(&:text).index(focus.text)
    end

    def determine_next_direction(char)
      eventually(polling_interval: 0.2) { raise "Base::KeyboardRow#determine_next_direction(#{char}) - No focus found" unless focus }
      if SPECIAL_KEYS.include?(char)
        key_position_for(char) > focused_key_position ? :right : :left
      elsif SPECIAL_KEYS.include?(focus.text)
        :left
      else
        char > focus.text ? :right : :left
      end
    rescue Exception => e
      $stdout.puts "determine_next_direction(#{char}): focus.text[#{focus.inspect}]: error: #{e}"
    end

    def select(char)
      loop do
        break if focus.text == char

        focus.send_keys(determine_next_direction(char))
        # sleep 0.3
      end
    end
  end
end
