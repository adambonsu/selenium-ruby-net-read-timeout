# frozen_string_literal: true

# TODO: Need to implement whole keyboard
require_relative 'keyboard_row'

module Base
  class Keyboard < SitePrism::Section
    section :focused_row, Base::KeyboardRow, '.FocusGroup--containsFocus'
    SPECIAL_KEYS = ['@', '.', '.com', '.co.uk', 'ABC', '# & £', 'abc', '-'].freeze

    def enter_text(text)
      @current_keyboard = 'regular'
      text.chars { |char| choose(char, @current_keyboard) }
    end

    def choose(char, current_keyboard)
      if special_key?(char) && char !~ /[a-zA-Z1-9]/ && current_keyboard == 'regular'
        special_character_keyboard_select
      elsif !special_key?(char) && current_keyboard == 'special'
        regular_keyboard_select
      end
      give_key_focus(char)
      find('.focus').native.send_keys(:enter)
    end

    def special_key?(key)
      SPECIAL_KEYS.include?(key)
    end

    def first_key_in_row_has_focus?
      focused_row.key_with_focus.text == focused_row.keys.first.text
    end

    def navigate_to_first_key_in_row
      find('.focus').native.send_keys(:left) until first_key_in_row_has_focus?
    end

    def key_with_focus
      focused_row&.key_with_focus
    end

    def key_with_focus_is_special?
      special_key?(focused_row.key_with_focus.text)
    end

    def determine_next_direction(char)
      if special_key?(char)
        :down
      else
        char > focused_row.key_with_focus.text ? :down : :up
      end
    end

    def special_character_keyboard_select
      special='# & £'
      find('.focus').native.send_keys(:up)
      loop do
        if focused_row.include? special
          focused_row.select(special)
          break
        else
          find('.focus').native.send_keys(:down)
        end
      end
      find('.focus').native.send_keys(:enter)
      @current_keyboard = 'special'
    end

    def regular_keyboard_select
      regular='abc'
      find('.focus').native.send_keys(:up)
      loop do
        if focused_row.include? regular
          focused_row.select(regular)
          break
        else
          find('.focus').native.send_keys(:down)
        end
      end
      find('.focus').native.send_keys(:enter)
      @current_keyboard = 'regular'
    end

    def give_key_focus(char)
      loop do
        if focused_row.include? char
          focused_row.select(char)
          break
        else
          navigate_to_first_key_in_row if key_with_focus_is_special?
          find('.focus').native.send_keys(determine_next_direction(char))
        end
      end
    end
  end
end
