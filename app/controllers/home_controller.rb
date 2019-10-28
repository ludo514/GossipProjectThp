class HomeController < ApplicationController
	def index
		@gossip = Gossip.all
		@user = User.all
	end
end
