
require 'rails_helper'

RSpec.describe Game, :type => :model do
    let(:genre) { FactoryGirl.build(:genre)}
    let(:platform) { FactoryGirl.build(:platform)}
    let(:game) { FactoryGirl.build(:game)}

    it 'is valid with a genre and a platform' do
      game.genres << genre
      game.platforms << platform
      expect(game).to be_valid
    end
end

