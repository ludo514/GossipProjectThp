class CommentairesController < ApplicationController

  def show
    @gossip = Gossip.find(params[:id])
    @user = User.all
    @commentaire = Commentaire.new
    @commentaires = Commentaire.all
  end

  def create
    @commentaire = Commentaire.new(user_id: session[:user_id], content: params[:commentaire][:content], gossip_id: params[:commentaire][:gossip_id])
    if @commentaire.save
      redirect_to commentaire_path(params[:commentaire][:gossip_id])
    end
  end
  
  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
      @commentaire = Commentaire.find(params[:id])
      id = @commentaire.gossip_id
      @commentaire.destroy
      redirect_to commentaire_path(id)
  end
end
