class SearchController < ApplicationController
  def result
    @navbar = 'search'
    if !params[:search].blank?
      @games = Game.search(params[:search])
    end
  end
end
