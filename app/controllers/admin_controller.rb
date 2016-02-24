class AdminController < ApplicationController
  authorize_resource :class => AdminController

  # GET /admin/index
  def index
    @navbar = 'admin'
    @countcomments = Comment.where(:notify => true).count
    # Wenn es keine gemeldeten Kommentare gibt, wird der Link deaktiviert.
    @commentClass = @countcomments != 0 ? 'btn btn-default btn-huge' : 'btn btn-default btn-huge disabled'
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

    if(@comments.count == 0)
      redirect_to admin_index_path
    end
  end

  # GET /admin/users
  def users
    @navbar = 'admin'
    @users = User.all
  end
end
