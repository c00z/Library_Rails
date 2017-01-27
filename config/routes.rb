Rails.application.routes.draw do
  root 'users#index'

  resources :users

  get '/users/new' => 'users#new'
  post '/users' =>  'users#create'
  get '/users/:id' => 'users#show'
  get '/login' => 'sessions#new'

end
