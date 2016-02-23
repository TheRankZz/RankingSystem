class CommentController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :new]

  #GET /comment/new
  def _new
    @comment = Comment.new
  end

  # PUT /comment/notify
  # PUT /comment/notify.json
  def notify
    if params[:id]
      @comment = Comment.find(params[:id])
      @comment.notify = true
    end
    respond_to do |format|
      if @comment.save
        format.html { redirect_to game_path(:id => @comment.game_id), notice: 'Kommentar wurde gemeldet' }
      else
        format.html { render :new }
      end
    end
  end

  # POST /comment
  # POST /comment.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to game_path(:id => @comment.game_id), notice: 'Comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  # DELETE /comment/destroy/1
  # DELETE /comment/destroy/1.json
  def destroy
    if params[:id]
      @comment = Comment.find(params[:id])
      @game_id = @comment.game_id
      @comment.destroy
    end

    respond_to do |format|
      if params[:redirect] == 'admin'
        format.html { redirect_to admin_comments_path, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { redirect_to game_path(:id => @comment.game_id), notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:text, :game_id)
  end
end
   
