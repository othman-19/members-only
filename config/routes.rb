Rails.application.routes.draw do
  resources :users
  resources :posts ,only:[:new, :create, :index]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#delete'
end
