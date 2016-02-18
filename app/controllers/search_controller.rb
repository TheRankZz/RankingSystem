class SearchController < ApplicationController
  def result
    if params[:search]
      @games = Game.search(params[:search])
    end
  end
end
