class GossipsController < ApplicationController
  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    @gossip = Gossip.find(params[:id])
    @user = User.all
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    @gossip = Gossip.find(params[:id])
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
      @gossip = Gossip.find(params[:id])
      post_params = params.require(:gossip).permit(:title, :content)
      if @gossip.update(post_params)
        redirect_to '/'
      end
  end

  def new
    @gossip = Gossip.new
  end

  def create
    post_params = params.require(:gossip).permit(:title, :content, :user_id)
    Gossip.create(post_params)
    redirect_to '/'
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to '/'
  end
end
