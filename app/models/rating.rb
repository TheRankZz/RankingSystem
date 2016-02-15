class Rating < ActiveRecord::Base
  belongs_to :game
  belongs_to :user


  def self.getByGameId(game_id)
    where('game_id = ?', game_id)
  end
end
