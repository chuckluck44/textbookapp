Rails.application.routes.draw do
  get 'sessions/new'

  get 'home' => 'dashboard#home'

  get 'history' => 'dashboard#history'

  get 'settings' => 'dashboard#settings'

  resources :textbook_matches
  resources :textbooks
  resources :textbook_requests
  resources :textbook_offers
  resources :users
  resources :users
  root to: 'visitors#index'

  get 'signup' => 'users#new'
  get '/auth/:provider/callback' => 'sessions#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/auth/failure' => 'sessions#failure'
end
