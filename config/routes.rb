Rails.application.routes.draw do

  get 'rides/create'

  resources :users#, only: [:show, :new, :create]
  resources :attractions
  resources :rides, only: :create
  root "site#home"

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'

end