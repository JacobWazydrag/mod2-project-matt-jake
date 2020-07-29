Rails.application.routes.draw do
  
  resources :images, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]

  devise_for :users

  resources :chirps
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root 'user#show'
=======
  root 'users#show'
>>>>>>> master

end

