Rails.application.routes.draw do
  
  resources :images
  resources :likes, only: [:new, :create, :destroy]
  resources :friendships, only: [:new, :create, :destroy]

  devise_for :users

  resources :chirps
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#show'

end
