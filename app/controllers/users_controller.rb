class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @dayoffs = DayOff.pluck(:off_plan)
  end
end
