class UserController < ApplicationController

  # DELETE /user/edit/1
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to admin_users_path, notice: "User wurde erfolgreich gelöscht."
    end
  end
end
