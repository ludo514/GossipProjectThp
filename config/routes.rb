Rails.application.routes.draw do

  root 'home#index'
  resources :gossips
  resources :users, except: [:update, :edit]
  resources :sessions, only: [:new,:destroy, :create]
  resources :cities, except: [:create, :new, :update, :edit, :destroy]
  resources :commentaires, only: [:show,:create]
  delete '/commentaires/:id', to: 'commentaires#destroy', as: 'commentaires_destroy'
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
  get '/welcome/:first_name', to: 'welcome#bonjour'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
