Rails.application.routes.draw do
  root 'users#index'

  resources :users

  get '/users/new' => 'users#new'
  post '/users' =>  'users#create'
  get '/users/:id' => 'users#show'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/libraries' => 'libraries#index'
  get '/libraries/new' => 'libraries#new', as: 'new_library'
  post '/libraries' => 'libraries#create'
  get '/libraries/:id' => 'libraries#show'

  get '/users/:user_id/libraries' => 'library_users#index', as: 'user_libraries'
  post '/libraries/:library_id/users' => 'library_users#create', as: 'library_users'
  
end
