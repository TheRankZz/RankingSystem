class CommentController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :new]
  def _new
    @comment = Comment.new
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


  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comment_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:text, :game_id)
  end
end
   