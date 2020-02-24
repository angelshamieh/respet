class DashboardController < ApplicationController

  def profile
    @user = current_user
  end

  def settings
    @user = current_user
  end

  def update
    current_user.update(update_params)
    redirect_to settings_path,  notice: 'Profile has been updated'
  end


  private

  def update_params
    params.require(:user).permit(:first_name, :last_name, :location, :email, :password)
  end
end
