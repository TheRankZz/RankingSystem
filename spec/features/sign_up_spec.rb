require 'rails_helper'
require 'spec_helper'
RSpec.feature 'Sign up',
              'As a "user",
              I want to sign up' do
  context 'at start page' do
    scenario 'sign up' do
      visit 'home/index'
      click_link 'REGISTRIEREN'
      fill_in 'user_email', with: 'Nicolas.Burchert@gmail.com'
      fill_in 'user_password', with: 'passwort'
      fill_in 'user_password_confirmation', with: 'passwort'
      expect { click_button 'Registrieren'}.to change {User.count }.by(1)
    end
  end
end