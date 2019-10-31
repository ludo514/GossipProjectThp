class SessionsController < ApplicationController
	def new
	end

	def create
		# cherche s'il existe un utilisateur en base avec l’e-mail
		user = User.find_by(email: params[:email])
		  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
		if user && user.authenticate(params[:password])
		   session[:user_id] = user.id
		   # app/controllers/books_controller.rb

		   # redirige où tu veux, avec un flash ou pas
		   redirect_to '/'

		else
			render 'new'
		   flash.now[:danger] = 'Invalid email/password combination'
		end
	end

	def destroy
		reset_session
  		@current_user = nil
  		redirect_to '/'
	end
end
