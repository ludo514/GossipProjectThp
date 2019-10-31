class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@city = City.all
  end
  def new
  	@user = User.new
  end

  def create

  	post_params = params.require(:user).permit(:first_name, :last_name, :password, :city_id, :email)
    User.create(post_params)
    redirect_to '/'
  end

  def destroy
  end
end
