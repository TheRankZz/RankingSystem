class RatingsController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :new]
  before_action :set_rating, only: [:destroy]


  # GET /ratings/new
  def new
    @rating = Rating.new
    @rating.game_id = params[:game_id]
    @rating.user_id = current_user.id
  end


  # POST /ratings
  # POST /ratings.json
  def create
    @rating = Rating.new(rating_params)

    respond_to do |format|
      if @rating.save
        format.html { redirect_to @rating.game, notice: 'Bewertung wurde erfolgreich gespeichert!' }
        format.json { render :show, status: :created, location: @rating.game }
      else
        format.html { render :new }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating.destroy
    respond_to do |format|
      format.html { redirect_to @rating.game, notice: 'Rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:game_id, :user_id, :description, :title)
    end
end
