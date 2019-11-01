class CitiesController < ApplicationController
  def show
  		@city = City.find(params[:id])
		@user = User.all
		@gossip = Gossip.all
  end
end
