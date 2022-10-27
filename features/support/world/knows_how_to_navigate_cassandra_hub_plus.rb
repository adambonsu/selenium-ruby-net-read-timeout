# frozen_string_literal: true

module KnowsHowToNavigateCassandraHubPlus
  def monthly_plan_footer_button_in_view?
    app.upsell.has_monthly_plan_footer_button?(wait: false)
  end

  def bring_monthly_plan_footer_button_into_view
    sleep 0.5
    navigate_with_remote(:down, 'bring_monthly_plan_footer_button_into_view(): Failed to bring monthly plan footer button into view by navigating :down') do
      monthly_plan_footer_button_in_view?
    end
  end

  def buttons_in_view
    app.current_page.buttons.map(&:text)
  end

  def navigate_down_until_button_contains_text(button, text)
    navigate_with_remote(:down, "navigate_down_until_button_contains_text(button: #{button.inspect}, text: #{text.inspect}): Failed to give button [#{button.inspect}] with the text [#{text}], after navigating down") do
      app.current_page.send(button)&.text == text
    end
  end
end

World(KnowsHowToNavigateCassandraHubPlus)
