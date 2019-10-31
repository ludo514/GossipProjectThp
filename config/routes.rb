Rails.application.routes.draw do

  root 'home#index'
  resources :gossips
  resources :users, except: [:update, :edit]
  resources :sessions, only: [:new,:destroy, :create]
  resources :city, except: [:create, :new, :update, :edit, :destroy]
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
  get '/welcome/:first_name', to: 'welcome#bonjour'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
