class RatingCache < ActiveRecord::Base
  belongs_to :cacheable, :polymorphic => true

  def self.getTotalRankingFromGame()
    average(:avg, :group => :cacheable_id)
  end

  def self.getQuantityRating()
    average(:qty, :group => :cacheable_id)
  end
end