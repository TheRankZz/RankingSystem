class SearchController < ApplicationController
  def result
    @navbar = 'Suche'
    if params[:search]
      @games = Game.search(params[:search])
    end
  end
end
