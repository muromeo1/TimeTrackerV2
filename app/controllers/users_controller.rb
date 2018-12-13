class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
		User.create(users_param)


	end

  private
  def users_param
    params.require(:user).permit(:name, :lat, :long, :checkin)
  end
end
