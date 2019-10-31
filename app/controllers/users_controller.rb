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
    user = User.create(post_params)
    if user
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
  end
end
