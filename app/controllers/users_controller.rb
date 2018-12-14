class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
    h = Time.now.hour
    m = Time.now.min
    s = Time.now.sec
    @time = ("#{h}:#{m}:#{s}")
  end

  def create
    
    params[:checkin] = Time.now.to_s
    params[:lat] = "latitude"
    params[:long] = "Longitude"


    Rails.logger.info "\n\n #{users_param} \n\n"


    User.create(users_param)


  end

  private
  def users_param
    params.require(:user).permit(:name, :lat, :long, :checkin)
  end
end
