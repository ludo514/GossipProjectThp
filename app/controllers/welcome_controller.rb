class WelcomeController < ApplicationController
  def bonjour
  		@gossip = Gossip.all
		@user = User.all
  end
end
