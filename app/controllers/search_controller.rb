class SearchController < ApplicationController
  def index
    if params[:search]
      @games = Game.search(params[:search])
    end
  end
end
