Rails.application.routes.draw do
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
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
