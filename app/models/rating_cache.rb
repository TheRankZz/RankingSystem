class RatingCache < ActiveRecord::Base
  belongs_to :cacheable, :polymorphic => true

  def self.getTotalRankingFromGame(game_id)
    average(:avg, :group => :cacheable_id)
  end
end