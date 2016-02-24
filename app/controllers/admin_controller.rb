class AdminController < ApplicationController
  authorize_resource :class => AdminController

  # GET /admin/index
  def index
    @navbar = 'admin'
    @countcomments = Comment.where(:notify => true).count
  end

  # GET /admin/games
  def games
    @navbar = 'admin'
    @games = Game.all
  end

  # GET /admin/comments
  def comments
    @navbar = 'admin'
    @comments = Comment.where(:notify => true)
  end

  # GET /admin/users
  def users
    @navbar = 'admin'
    @users = User.all
  end
end
