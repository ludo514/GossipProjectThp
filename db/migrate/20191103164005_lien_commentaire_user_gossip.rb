class LienCommentaireUserGossip < ActiveRecord::Migration[5.2]
  def change
  	add_reference :commentaires, :user, foreign_key: true
  	add_reference :commentaires, :gossip, foreign_key: true
  end
end
