require 'rails_helper'
require 'spec_helper'
RSpec.feature 'Sign in',
              'As a registered "user",
              I want to sign in' do
  context 'at start page' do
    let(:user) { FactoryGirl.create(:user)}

    scenario 'sign in' do
      visit 'home/index'
      click_link 'ANMELDEN'
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'passwort'

      click_button 'Anmelden'

      expect(page).to have_content "Erfolgreich angemeldet."
    end
  end
end


