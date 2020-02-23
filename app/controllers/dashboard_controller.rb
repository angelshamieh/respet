class DashboardController < ApplicationController

  def profile
    @user = current_user
  end
end
