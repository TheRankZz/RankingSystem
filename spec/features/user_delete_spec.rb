require 'rspec'
require 'rails_helper'
require 'spec_helper'

RSpec.feature 'delete User',
              'As a Admin,
               I want to sign in
               so that I can delete users' do
  context 'at new user' do

    before(:each) do
      load Rails.root + "db/seeds.rb"

      visit 'home/index'
      click_link 'ANMELDEN'
      fill_in 'user_email', with: 'admin@therankzz.de'
      fill_in 'user_password', with: 'password'
      click_button 'Anmelden'
      expect(page).to have_content 'Erfolgreich angemeldet.'
    end

    scenario 'edit user' do
      visit 'admin/users'
      first(:link, 'Löschen').click
      expect(page).to have_content 'Benutzer wurde erfolgreich entfernt'
    end
  end
end