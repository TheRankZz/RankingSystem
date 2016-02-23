
require 'rails_helper'

RSpec.describe Comment, :type => :model do
  let(:comment) { FactoryGirl.build(:comment)}

  context 'add a comment' do


    it 'it works' do

      expect(comment).to be_valid
    end
  end
end


