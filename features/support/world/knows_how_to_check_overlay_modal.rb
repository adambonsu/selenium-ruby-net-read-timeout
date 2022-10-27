# frozen_string_literal: true

module KnowsHowToCheckOverlayModal
  def check_overlay_modal_has_these_options(options)
    options.each do |option|
      expect(app.overlay_modal.options).to include(option)
    end
  end
end

World(KnowsHowToCheckOverlayModal)
