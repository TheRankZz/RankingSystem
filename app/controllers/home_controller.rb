class HomeController < ApplicationController
  def index
    @navbar = 'home'
    @topgames = Game.withRanking.limit(5)
    @newgames = Game.orderByReleaseDate.limit(5)
  end
end
