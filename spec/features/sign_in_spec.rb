require 'rails_helper'
require 'spec_helper'
RSpec.feature 'Sign in',
              'As a registered "user",
              I want to sign in' do
  context 'at start page' do
    let(:user) { FactoryGirl.create(:user)}

    scenario 'sing in' do
      visit 'home/index'
      click_link 'LOGIN'
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'passwort'

      click_button 'Sign in'

      expect(page).to have_content "Signed in successfully."
    end
  end
end


