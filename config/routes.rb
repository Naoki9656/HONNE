Rails.application.routes.draw do


  get 'users/index'

  get 'favorites/index'

  get 'sessions/new'

  get 'topics/new'
  get 'lists/new'
  root 'toppages#index'
  get 'users/new'
  get 'toppages/index'
  post 'topics/new'
  get 'toppages/list'
  get 'topics/index'

  get 'toppages/help'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources 'topics'
  resources 'users'

  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
