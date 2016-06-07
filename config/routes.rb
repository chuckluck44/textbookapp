Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'home' => 'dashboard#home'

  get 'history' => 'dashboard#history'

  get 'settings' => 'dashboard#settings'

  root to: 'visitors#index'
  get 'signup' => 'users#new'
  get '/auth/:provider/callback' => 'sessions#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/auth/failure' => 'sessions#failure'

  resources :textbook_matches
  resources :textbooks
  resources :textbook_requests
  resources :textbook_offers
  resources :users
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
