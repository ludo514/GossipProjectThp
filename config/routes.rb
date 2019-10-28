Rails.application.routes.draw do
  root 'home#index'
  get 'user/show/:id', to: 'user#show', as: 'user'
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
  get '/gossip/article_id/:id', to: 'gossip#contenue', as: 'gossip'
  get '/welcome/:first_name', to: 'welcome#bonjour'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
