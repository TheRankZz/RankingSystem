class HomeController < ApplicationController
  def index
    @navbar = 'home'
    @topgames = Game.getGamesWithRanking.limit(5)
    @newgames = Game.getGamesOrderByReleaseDate.limit(5)
  end
end
