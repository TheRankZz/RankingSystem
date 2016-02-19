require 'rails_helper'
require 'spec_helper'
RSpec.feature 'Sign out' do
  context 'at start page' do
    let(:user) { FactoryGirl.create(:user)}

    scenario 'sign out' do
      visit 'home/index'
      click_link 'LOGIN'
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'passwort'

      click_button 'Sign in'
      #New Profile
      fill_in 'Username', with: 'Nico3210'
      fill_in 'Firstname', with: 'Nico'
      fill_in 'Lastname', with: 'Burchert'
      click_button 'Create Profile'
      expect(page).to have_content "Profile was successfully created."

      page.find(:xpath, "//a[@href='/users/sign_out']").click

      expect(page).to have_content "Signed out successfully."
      expect(page).to have_content "LOGIN"
    end
  end
end



