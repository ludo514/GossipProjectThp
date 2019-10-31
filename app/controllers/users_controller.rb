class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@city = City.all
  end
  def new
  	@user = User.new
  end

  def create
    @user = User.new(first_name:params[:user][:first_name], last_name: params[:user][:last_name], password: params[:user][:password],city_id: rand(1..10))
    if @user.save
      redirect_to '/'
    else
      flash.now[:danger] = 'Champ manquant'
      render 'new'
    end
  end

  def destroy
  end
end
