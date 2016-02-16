class Rating < ActiveRecord::Base
  belongs_to :game
  belongs_to :user


  has_many :rating_categories
  has_many :categories, through: :rating_categories

  def self.getByGameId(game_id)
    where('game_id = ?', game_id)
  end
end
