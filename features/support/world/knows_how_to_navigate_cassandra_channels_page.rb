# frozen_string_literal: true

module KnowsHowToNavigateCassandraChannelsPage
  def channels_page_option_with_focus
    app&.channels&.button_with_focus&.text
  end

  def give_option_on_channels_page_focus(option, direction = :right)
    navigate_with_remote(direction, "give_option_on_channels_page_focus( option: #{option.inspect}, direction: #{direction.inspect}) Failed to give #{option} focus after navigating #{direction}") do
      channels_page_option_with_focus == option
    end
  end
end

World(KnowsHowToNavigateCassandraChannelsPage)
