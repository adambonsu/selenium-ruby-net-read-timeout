# frozen_string_literal: true

module Base
  class Upsell < Base::Global
    set_url '/premium/upsell'
    set_url_matcher %r{/premium/upsell}

    element :cancel_button, '#cancel'
    element :related_features, '.HeroFull__features'
    element :sign_in_box, '#OverlayModal'
    element :sub_heading, 'p[class="HeroUpsell__details"]'
    element :sign_in_button, '#signin'

    element :upsell_buttons, '#upsellPage'
    element :plan_pricing, '#upsellPage'

    # hero image
    element :start_your_free_trial_button, '#UpsellHero__monthly'
    element :monthly_plan_hero_button, '#HeroUpsell__monthly'
    element :annual_plan_hero_button, '#HeroUpsell__annual'
    element :text_on_footer, 'p[class="Footer__text"]'

    # hero image - amazon upsell
    element :monthly_plan_button, '#UpsellHero__monthly'
    element :upsell_trial_details, "p[class='HeroUpsell__details']"
    element :annual_plan_button, '#UpsellHero__annual'

    # footer -amazon upsell
    element :monthly_plan_footer_button, '#FooterUpsell__monthly'
    element :annual_plan_footer_button, '#FooterUpsell__annual'

    # hero image - browser/samsung reskin
    element :start_your_free_trial_button, '#HeroUpsell__subscribe-button'
    element :upgrade_to_premium_hero_button, '#HeroUpsell__subscribe-button'
    element :sub_heading_on_hero, 'p[class="UpsellHeroReskin__details"]'

    # upsell footer - browser/samsung reskin
    element :start_your_free_trial_button_on_footer, '#FooterUpsell__subscribe-button'
    element :upgrade_to_premium_button_on_footer, '#FooterUpsell__subscribe-button'
    element :terms_and_conditions, 'p[class="FooterUpsell__terms"]'

    # benefits slider
    section :hub_plus_benefits_slider, Base::HubPlusBenefitsSlider, '#sliderUpsell'

    # samsung/browser upgrade screen
    element :qc_code, "[data-testid='hubplus-qr-code']"
    element :upgrade_screen, '#upgradePage'
    element :back_button, '#cancel'

    # error dialogs
    element :error_dialog, '#OverlayModal'
    element :cancel_button, '#cancel'
    element :overlay_buttons, '#OverlayButtons'
    element :retry_button, '#retry'

    # welcome screen
    element :continue_button, '#continue'
    element :welcome_screen, '.OverlayModal__content'
    element :welcome_screen_title, 'h2'

    # email verification screen
    element :check_email_send_screen, 'div.OverlayModal__content'
    element :email_verification_screen, '#resend'
    element :email_verification_screen_title, "h2[class='cp_heading HeroFull__sub-heading']"
    element :verify_continue_button, '#continue'
    element :verify_email_resend_button, '#resend'
  end
end
