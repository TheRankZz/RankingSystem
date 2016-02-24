class SearchController < ApplicationController
  def result
    @navbar = 'search'
    if params[:search]
      @games = Game.search(params[:search])
    end
  end
end
