class GossipController < ApplicationController
  def contenue
  	@gossip = Gossip.find(params[:id])
  	@user = User.all
  end
end
