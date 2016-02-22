class AdminController < ApplicationController
  authorize_resource :class => AdminController

  def index
  end

  def games
    @games = Game.all

  end

  def comments
  end

  def users
  end
end
