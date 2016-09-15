Rails.application.routes.draw do

  root "welcome#index"

  resources :games
  resources :players
  resources :stats

end
