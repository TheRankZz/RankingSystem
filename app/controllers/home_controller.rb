class HomeController < ApplicationController
  def index
    @topgames = Game.getGamesWithRanking.limit(5)
  end
end
