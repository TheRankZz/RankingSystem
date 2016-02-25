require 'rails_helper'
require 'spec_helper'
RSpec.feature 'Sign out' do
  context 'at start page' do
    let(:user) { FactoryGirl.create(:user)}

    scenario 'sign out' do
      visit 'home/index'
      click_link 'ANMELDEN'
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'passwort'

      click_button 'Anmelden'
      #New Profile
      fill_in 'Benutzername', with: 'Nico3210'
      fill_in 'Vorname', with: 'Nico'
      fill_in 'Nachname', with: 'Burchert'
      click_button 'Speichern'
      expect(page).to have_content 'Profil wurde erfolgreich angelegt'

      page.find(:xpath, "//a[@href='/users/sign_out']").click

      expect(page).to have_content "Erfolgreich abgemeldet"
      expect(page).to have_content "ANMELDEN"
    end
  end
end



