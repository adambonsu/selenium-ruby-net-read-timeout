# frozen_string_literal: true

module Base
  class OnboardingLocation < Base::Global
    section :keyboard, Base::Keyboard, '#keyboard'
    element :title, '.PageHeader__title'
    element :confirm_button, '#confirmButton'
  end
end
