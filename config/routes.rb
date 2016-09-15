Rails.application.routes.draw do

  root "games#index"

  resources :games
  resources :players
  resources :stats

end
