Rails.application.routes.draw do
  
  resources :images, only: [:create, :destroy]
  #resources :likes, only: [:create, :destroy]
  resources :friendships


  devise_for :users

  resources :users

  resources :chirps do
      member do 
    put "like", to: "chirps#upvote"
  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#userprofile'

end
