class UserController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    #@user.destroy

    if @user.destroy
      redirect_to admin_users_path, notice: "User wurde erfolgreich gelöscht."
    end
  end
end
