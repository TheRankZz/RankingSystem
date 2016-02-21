
require 'rails_helper'

RSpec.describe Game, :type => :model do
    let(:genre) { FactoryGirl.build(:genre)}
    let(:platform) { FactoryGirl.build(:platform)}
    let(:game) { FactoryGirl.build(:game)}

    context 'needs a genre and a platform' do
      #it 'is not valid without a genre and a platform' do
        #expect(game).to_not be_valid
      #end

      it 'is valid with a genre and a platform' do
        game.genres << genre
        game.platforms << platform
        expect(game).to be_valid
      end
  end
end

