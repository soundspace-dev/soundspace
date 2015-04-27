Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :bookings
  resources :reviews
  resources :users
  resources :spaces

  root 'spaces#index'
 
end
