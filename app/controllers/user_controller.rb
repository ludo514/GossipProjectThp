class UserController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@city = City.all
  end
end
