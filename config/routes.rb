Rails.application.routes.draw do
  
  root 'home#index'
  resources :gossip
  resources :user, except: [:create, :new, :update, :edit, :destroy]
  resources :city, except: [:create, :new, :update, :edit, :destroy]
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
  get '/welcome/:first_name', to: 'welcome#bonjour'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
