class HomeController < ApplicationController
  # Es werden unter anderem die 5 neusten Spiele und die 5 bestbewerteten Spiele angezeigt.
  def index
    @navbar = 'home'
    @topgames = Game.getGamesWithRanking.limit(5)
    @newgames = Game.getGamesOrderByReleaseDate.limit(5)
  end
end
