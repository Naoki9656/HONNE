Rails.application.routes.draw do
  get 'topics/new'
  get 'lists/new'
  root 'toppages#index'
  get 'toppages/index'
  post 'topics/new'
  get 'toppages/list'
  get 'topics/index'
  resources 'topics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
