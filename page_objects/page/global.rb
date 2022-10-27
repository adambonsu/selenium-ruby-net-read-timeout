# frozen_string_literal: true

require_relative '../section/overlay_modal'

module Base
  class Global < SitePrism::Page
    element :body, 'body'
    element :button_focus, '.focus'
    element :stay_button, '#stayDialogButton'
    element :leave_button, '#leaveDialogButton'
    section :overlay_modal, Base::OverlayModal, '#OverlayModal'
    section :side_nav, Base::SideNav, '#MainNav'
    section :sub_nav, Base::SubNav, '#SubNav'
    element :loadingbar, '.LoadingBar__wrapper'
    element :sponsorship, '.cp_sponsorship'
    element :button, '#button'
    element :sign_in_pairing_page, '#signInPairingPage'
    element :sign_in_onboard_page, '#signInOnboardingPage'
    element :whos_watching, '.ProfileSelection'
    element :privacy_dialog, '#privacyPolicyPage'
    section :profile_keyboard, Base::ProfileKeyboard, '.Takeover'

    def name
      self.class.to_s.split('::').last
    end

    def buttons
      self.class.instance_methods(false).select { |m| m =~ /button$/ }
    end

    def button_with_focus
      button = buttons.find { |b| send(b).focus? }
      send(button) if button
    end
  end
end
