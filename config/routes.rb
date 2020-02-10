Rails.application.routes.draw do
  
  root "static_pages#home"
  get '/movies/recent', to: "movies#recent"
  get'/users/:id', to: "users#show", as: "show_user"
  resources :battles
  resources :characters
  resources :superpowers
  resources :movies
  resources :users, only: [:new, :create, :show]
  
  get '/signup', to: "users#new"
  get '/signin', to: "session#new"
  post '/signin', to: "session#create"
  delete '/session', to: "session#destroy"
  get '/auth/facebook/callback' => 'facebook_users#create'
  
  
end
